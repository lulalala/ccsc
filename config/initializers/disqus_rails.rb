DisqusRails.setup do |config|
  config::SHORT_NAME = "ccsctw"
  config::SECRET_KEY = "" #leave blank if not used
  config::PUBLIC_KEY = "" #leave blank if not used
  config::ACCESS_TOKEN = AppConfig.disqus.token
end
