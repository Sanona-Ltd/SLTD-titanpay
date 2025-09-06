{{-- Stripe Elements API (moderne API mit Wallets) --}}
@if (get_payment_setting('payment_type', STRIPE_PAYMENT_METHOD_NAME, 'stripe_api_charge') == 'stripe_elements')
<link
    href="{{ asset('vendor/core/plugins/stripe/css/stripe-elements.css') }}?v=3.0.0"
    rel="stylesheet"
>
<script src="{{ asset('https://js.stripe.com/v3/') }}"></script>
@endif

{{-- Legacy Stripe API Charge (alte Card.js) --}}
@if (get_payment_setting('payment_type', STRIPE_PAYMENT_METHOD_NAME, 'stripe_api_charge') == 'stripe_api_charge')
<link
    href="{{ asset('vendor/core/plugins/stripe/libraries/card/card.css') }}?v=2.5.4"
    rel="stylesheet"
>
<script src="{{ asset('vendor/core/plugins/stripe/libraries/card/card.js') }}?v=2.5.4"></script>
<script src="{{ asset('https://js.stripe.com/v2/') }}"></script>
@endif

{{-- Stripe Checkout (keine zusätzlichen Assets erforderlich) --}}
@if (get_payment_setting('payment_type', STRIPE_PAYMENT_METHOD_NAME, 'stripe_api_charge') == 'stripe_checkout')
{{-- Stripe Checkout lädt seine eigenen Ressourcen --}}
@endif