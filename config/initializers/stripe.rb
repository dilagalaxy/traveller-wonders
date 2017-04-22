require "stripe"

if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_ZADFbMBBSf4NUDxfNP2rzJie',
    :secret_key => 'sk_test_Y50DiqU7KIp3oSvDXZ63ikGb'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]