if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_VjI5V8HMgiajiPOOFK1w8RT5',
    secret_key: 'sk_test_USRbDcXyut7sWAVR2m6dcn3p'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
