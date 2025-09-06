@if (setting('payment_stripe_status') == 1)
    <x-plugins-payment::payment-method
        :name="STRIPE_PAYMENT_METHOD_NAME"
        paymentName="Stripe"
        :supportedCurrencies="(new Botble\Stripe\Services\Gateways\StripePaymentService)->supportedCurrencyCodes()"
    >
        {{-- Stripe Elements (moderne API mit Wallets) --}}
        @if (get_payment_setting('payment_type', STRIPE_PAYMENT_METHOD_NAME, 'stripe_api_charge') == 'stripe_elements')
            <div class="stripe-payment-element-container" style="max-width: 500px">
                <div class="form-group mt-3 mb-3">
                    <!-- Express Checkout Element für Wallets (Apple Pay, Google Pay, Twint, etc.) -->
                    <div id="stripe-express-checkout-element">
                        <!-- Express Payment Methods werden hier von Stripe JS eingefügt -->
                    </div>
                </div>
                
                <!-- Fallback für Benutzer ohne unterstützte Wallets -->
                <div class="payment-method-divider text-center my-3" style="position: relative;">
                    <span style="background: white; padding: 0 15px; color: #6c757d; font-size: 14px;">oder zahlen Sie mit Karte</span>
                    <hr style="position: absolute; top: 50%; left: 0; right: 0; margin: 0; z-index: -1;">
                </div>
                
                <div class="form-group mb-3">
                    <!-- Stripe Payment Element wird hier geladen -->
                    <div id="stripe-payment-element">
                        <!-- Payment Element wird hier von Stripe JS eingefügt -->
                    </div>
                </div>
            </div>
            
            <div id="stripe-payment-messages" class="mt-3" role="alert"></div>
            <div id="payment-stripe-key" data-value="{{ get_payment_setting('client_id', STRIPE_PAYMENT_METHOD_NAME) }}"></div>
            
            <!-- Client Secret für Payment Intent (wird vom Backend gesetzt) -->
            <div id="stripe-client-secret" data-value="" style="display: none;"></div>
        @endif

        {{-- Legacy Stripe API Charge (alte Kartenfelder) --}}
        @if (get_payment_setting('payment_type', STRIPE_PAYMENT_METHOD_NAME, 'stripe_api_charge') == 'stripe_api_charge')
            <div class="card-checkout" style="max-width: 350px">
                <div class="form-group mt-3 mb-3">
                    <div class="stripe-card-wrapper"></div>
                </div>

                <div @class(['form-group mb-3', 'has-error' => $errors->has('number') || $errors->has('expiry')])>
                    <div class="row">
                        <div class="col-sm-8">
                            <input
                                class="form-control"
                                id="stripe-number"
                                data-stripe="number"
                                type="text"
                                placeholder="{{ trans('plugins/payment::payment.card_number') }}"
                                autocomplete="off"
                            >
                        </div>
                        <div class="col-sm-4">
                            <input
                                class="form-control"
                                id="stripe-exp"
                                data-stripe="exp"
                                type="text"
                                placeholder="{{ trans('plugins/payment::payment.mm_yy') }}"
                                autocomplete="off"
                            >
                        </div>
                    </div>
                </div>
                <div @class(['form-group mb-3', 'has-error' => $errors->has('name') || $errors->has('cvc')])>
                    <div class="row">
                        <div class="col-sm-8">
                            <input
                                class="form-control"
                                id="stripe-name"
                                data-stripe="name"
                                type="text"
                                placeholder="{{ trans('plugins/payment::payment.full_name') }}"
                                autocomplete="off"
                            >
                        </div>
                        <div class="col-sm-4">
                            <input
                                class="form-control"
                                id="stripe-cvc"
                                data-stripe="cvc"
                                type="text"
                                placeholder="{{ trans('plugins/payment::payment.cvc') }}"
                                autocomplete="off"
                            >
                        </div>
                    </div>
                </div>
            </div>
            <div id="payment-stripe-key" data-value="{{ get_payment_setting('client_id', STRIPE_PAYMENT_METHOD_NAME) }}"></div>
        @endif

        {{-- Stripe Checkout (Weiterleitung zu Stripe) --}}
        @if (get_payment_setting('payment_type', STRIPE_PAYMENT_METHOD_NAME, 'stripe_api_charge') == 'stripe_checkout')
            <div class="stripe-checkout-info" style="max-width: 400px">
                <div class="alert alert-info">
                    <i class="fas fa-info-circle me-2"></i>
                    <strong>Stripe Checkout</strong><br>
                    Sie werden zu einer sicheren Stripe-Seite weitergeleitet, um Ihre Zahlung abzuschließen.
                    Dort können Sie mit Karte, Apple Pay, Google Pay und anderen verfügbaren Zahlungsmethoden bezahlen.
                </div>
                
                <div class="payment-methods-preview mt-3">
                    <small class="text-muted">Verfügbare Zahlungsmethoden:</small>
                    <div class="d-flex flex-wrap gap-2 mt-2">
                        <span class="badge bg-light text-dark border">
                            <i class="fab fa-cc-visa"></i> Visa
                        </span>
                        <span class="badge bg-light text-dark border">
                            <i class="fab fa-cc-mastercard"></i> Mastercard
                        </span>
                        <span class="badge bg-light text-dark border">
                            <i class="fab fa-apple-pay"></i> Apple Pay
                        </span>
                        <span class="badge bg-light text-dark border">
                            <i class="fab fa-google-pay"></i> Google Pay
                        </span>
                        <span class="badge bg-light text-dark border">
                            <i class="fas fa-university"></i> SEPA
                        </span>
                    </div>
                </div>
            </div>
        @endif
    </x-plugins-payment::payment-method>
@endif