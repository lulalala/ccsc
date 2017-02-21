Recaptcha.configure do |config|
  config.site_key = AppConfig.recaptcha.site_key
  config.secret_key = AppConfig.recaptcha.secret_key
end
