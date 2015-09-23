# config/initializers/stripe.rb:

# We need to setup Stripe’s API key before we can use the API. Let’s do this in an initializer. 
# Add the following to config/initializers/stripe.rb:

Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]