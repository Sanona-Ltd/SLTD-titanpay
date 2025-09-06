'use strict'

var BPayment = BPayment || {}

BPayment.initResources = function () {
    let paymentMethod = $(document).find('input[name=payment_method]:checked').first()

    if (!paymentMethod.length) {
        paymentMethod = $(document).find('input[name=payment_method]').first()
        paymentMethod.trigger('click').trigger('change')
    }

    if (paymentMethod.length) {
        paymentMethod.closest('.list-group-item').find('.payment_collapse_wrap').addClass('show')
    }

    // Legacy Stripe Card.js für stripe_api_charge
    if ($('.stripe-card-wrapper').length > 0) {
        new Card({
            // a selector or DOM element for the form where users will
            // be entering their information
            form: '.payment-checkout-form', // *required*
            // a selector or DOM element for the container
            // where you want the card to appear
            container: '.stripe-card-wrapper', // *required*

            formSelectors: {
                numberInput: 'input#stripe-number', // optional — default input[name="number"]
                expiryInput: 'input#stripe-exp', // optional — default input[name="expiry"]
                cvcInput: 'input#stripe-cvc', // optional — default input[name="cvc"]
                nameInput: 'input#stripe-name', // optional - defaults input[name="name"]
            },

            width: 350, // optional — default 350px
            formatting: true, // optional - default true

            // Strings for translation - optional
            messages: {
                validDate: 'valid\ndate', // optional - default 'valid\nthru'
                monthYear: 'mm/yyyy', // optional - default 'month/year'
            },

            // Default placeholders for rendered fields - optional
            placeholders: {
                number: '•••• •••• •••• ••••',
                name: 'Full Name',
                expiry: '••/••',
                cvc: '•••',
            },

            masks: {
                cardNumber: '•', // optional - mask card number
            },

            // if true, will log helpful messages for setting up Card
            debug: false, // optional - default false
        })
    }

    // Moderne Stripe Elements API für stripe_elements (mit Wallets)
    if ($('#stripe-payment-element').length > 0) {
        BPayment.initStripeElements()
    }
}

BPayment.initStripeElements = function () {
    const publishableKey = $('#payment-stripe-key').data('value')
    
    if (!publishableKey) {
        console.error('Stripe publishable key nicht gefunden')
        return
    }

    // Stripe-Instanz initialisieren
    const stripe = Stripe(publishableKey)
    
    // Appearance-Konfiguration für das Payment Element
    const appearance = {
        theme: 'stripe',
        variables: {
            colorPrimary: '#0570de',
            colorBackground: '#ffffff',
            colorText: '#30313d',
            colorDanger: '#df1b41',
            fontFamily: 'system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif',
            spacingUnit: '4px',
            borderRadius: '6px'
        },
        rules: {
            '.Tab': {
                border: '1px solid #e0e6eb',
                boxShadow: '0px 1px 1px rgba(0, 0, 0, 0.03), 0px 3px 6px rgba(18, 42, 66, 0.02)'
            },
            '.Tab:hover': {
                color: 'var(--colorText)'
            },
            '.Tab--selected': {
                borderColor: '#0570de',
                boxShadow: '0 0 0 1px #0570de'
            }
        }
    }

    // Elements-Instanz erstellen
    const elements = stripe.elements({ appearance })
    
    // Express Checkout Element für Wallets (Apple Pay, Google Pay, etc.)
    const expressCheckoutElement = elements.create('expressCheckout', {
        onConfirm: (event) => {
            BPayment.handleExpressPayment(stripe, event)
        }
    })
    
    // Express Checkout Element mounten
    const expressCheckoutContainer = document.getElementById('stripe-express-checkout-element')
    if (expressCheckoutContainer) {
        expressCheckoutElement.mount('#stripe-express-checkout-element')
        
        // Event-Listener für Express Checkout verfügbarkeit
        expressCheckoutElement.on('ready', (event) => {
            if (event.availablePaymentMethods && Object.keys(event.availablePaymentMethods).length > 0) {
                // Express payment methods verfügbar - Container anzeigen
                $(expressCheckoutContainer).show()
            } else {
                // Keine Express payment methods verfügbar - Container verstecken
                $(expressCheckoutContainer).hide()
                $('.payment-method-divider').hide()
            }
        })
    }

    // Payment Element für Karten und andere Zahlungsmethoden
    const paymentElement = elements.create('payment', {
        layout: {
            type: 'accordion',
            defaultCollapsed: false,
            radios: false,
            spacedAccordionItems: true
        },
        paymentMethodOrder: ['card', 'klarna', 'afterpay_clearpay', 'sepa_debit']
    })
    
    // Payment Element mounten
    paymentElement.mount('#stripe-payment-element')
    
    // Globale Referenzen für später
    BPayment.stripe = stripe
    BPayment.elements = elements
    BPayment.paymentElement = paymentElement
    BPayment.expressCheckoutElement = expressCheckoutElement
}

BPayment.handleExpressPayment = async function (stripe, event) {
    const form = $('.payment-checkout-form')
    const formData = new FormData(form[0])
    
    try {
        // Payment Intent vom Backend erstellen
        const response = await fetch('/payment/stripe/create-payment-intent', {
            method: 'POST',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                amount: formData.get('amount'),
                currency: formData.get('currency'),
                name: formData.get('name'),
                return_url: formData.get('return_url'),
                callback_url: formData.get('callback_url')
            })
        })
        
        const { client_secret } = await response.json()
        
        // Express Payment bestätigen
        const { error } = await stripe.confirmPayment({
            elements: BPayment.elements,
            clientSecret: client_secret,
            confirmParams: {
                return_url: formData.get('return_url') || window.location.origin + '/payment/stripe/success'
            }
        })
        
        if (error) {
            BPayment.showStripeError(error.message)
            event.complete('fail')
        } else {
            event.complete('success')
        }
    } catch (error) {
        console.error('Express payment error:', error)
        BPayment.showStripeError('Ein Fehler ist aufgetreten. Bitte versuchen Sie es erneut.')
        event.complete('fail')
    }
}

BPayment.showStripeError = function (message) {
    const messagesContainer = document.getElementById('stripe-payment-messages')
    if (messagesContainer) {
        messagesContainer.innerHTML = `
            <div class="alert alert-danger" role="alert">
                <i class="fas fa-exclamation-triangle me-2"></i>
                ${message}
            </div>
        `
        messagesContainer.scrollIntoView({ behavior: 'smooth', block: 'center' })
    } else if (typeof Botble !== 'undefined') {
        Botble.showError(message)
    } else {
        alert(message)
    }
}

BPayment.handleStripePayment = async function (button, form, submitInitialText) {
    if (!BPayment.stripe || !BPayment.elements || !BPayment.paymentElement) {
        console.error('Stripe Elements nicht initialisiert')
        button.prop('disabled', false)
        button.html(submitInitialText)
        return
    }

    try {
        // Payment Intent vom Backend erstellen
        const formData = new FormData(form[0])
        const response = await fetch('/payment/stripe/create-payment-intent', {
            method: 'POST',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                amount: formData.get('amount'),
                currency: formData.get('currency'),
                name: formData.get('name'),
                return_url: formData.get('return_url'),
                callback_url: formData.get('callback_url')
            })
        })

        if (!response.ok) {
            throw new Error('Fehler beim Erstellen des Payment Intents')
        }

        const { client_secret } = await response.json()

        // Payment mit Stripe bestätigen
        const { error } = await BPayment.stripe.confirmPayment({
            elements: BPayment.elements,
            clientSecret: client_secret,
            confirmParams: {
                return_url: formData.get('return_url') || window.location.origin + '/payment/stripe/success'
            }
        })

        if (error) {
            // Fehler anzeigen
            BPayment.showStripeError(error.message)
            button.prop('disabled', false)
            button.html(submitInitialText)
        } else {
            // Payment erfolgreich - Benutzer wird zu return_url weitergeleitet
            console.log('Payment erfolgreich eingeleitet')
        }
    } catch (error) {
        console.error('Stripe payment error:', error)
        BPayment.showStripeError('Ein Fehler ist aufgetreten. Bitte versuchen Sie es erneut.')
        button.prop('disabled', false)
        button.html(submitInitialText)
    }
}

BPayment.init = function () {
    BPayment.initResources()

    $(document).on('change', '.js_payment_method', function (event) {
        event.preventDefault()

        $('.payment_collapse_wrap').removeClass('collapse').removeClass('show').removeClass('active')

        $(event.currentTarget)
            .closest('.list-group-item')
            .find('.payment_collapse_wrap')
            .addClass('show')
            .addClass('active')
    })

    $(document)
        .off('click', '.payment-checkout-btn')
        .on('click', '.payment-checkout-btn', function (event) {
            event.preventDefault()

            const button = $(event.currentTarget)
            const form = button.closest('form')
            const submitInitialText = button.html()

            if (form.valid && !form.valid()) {
                return
            }

            button.prop('disabled', true)
            button.html(
                `<span class="spinner-border spinner-border-sm me-2" role="status"></span> ${button.data('processing-text')}`
            )

            // Stripe Elements (moderne API mit Wallets)
            if ($('input[name=payment_method]:checked').val() === 'stripe' && $('#stripe-payment-element').length > 0) {
                BPayment.handleStripePayment(button, form, submitInitialText)
            }
            // Legacy Stripe API Charge
            else if ($('input[name=payment_method]:checked').val() === 'stripe' && $('.stripe-card-wrapper').length > 0) {
                Stripe.setPublishableKey($('#payment-stripe-key').data('value'))
                Stripe.card.createToken(form, function (status, response) {
                    if (response.error) {
                        if (typeof Botble != 'undefined') {
                            Botble.showError(response.error.message, button.data('error-header'))
                        } else {
                            alert(response.error.message)
                        }
                        button.prop('disabled', false)
                        button.html(submitInitialText)
                    } else {
                        form.append($('<input type="hidden" name="stripeToken">').val(response.id))
                        form.submit()
                    }
                })
            }
            // Stripe Checkout oder andere Zahlungsmethoden
            else {
                form.submit()
            }
        })
}

$(document).ready(function () {
    BPayment.init()

    document.addEventListener('payment-form-reloaded', function () {
        BPayment.initResources()
    })
})
