Rails.application.configure do
  # Autres configurations...

  config.eager_load = false


  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.perform_deliveries = true

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: 'in-v3.mailjet.com',
    port: 587,
    domain: 'monsite.fr',
    user_name: ENV['MAILJET_LOGIN'],
    password: ENV['MAILJET_PWD'],
    authentication: :plain,
    enable_starttls_auto: true
  }
end
