Flickr.configure do |config|
  config.api_key       = AppConfig.flickr.key
  config.shared_secret = AppConfig.flickr.secret
  config.cache = ActiveSupport::Cache::MemoryStore.new(expires_in: 1.day)
end
