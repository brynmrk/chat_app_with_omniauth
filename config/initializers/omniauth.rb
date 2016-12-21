Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'], { scope: FACEBOOK_SCOPES }
  configure do |config|
      config.failure_raise_out_environments = []
  end
end