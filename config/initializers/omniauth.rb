Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'], { scope: FACEBOOK_SCOPES }
  provider :google_oauth2, GOOGLE_CONFIG['client_id'], GOOGLE_CONFIG['client_secret'], { scope: GOOGLE_SCOPES }
  provider :twitter, TWITTER_CONFIG['key'], TWITTER_CONFIG['secret'], { :secure_image_url => 'true', :image_size => 'original' }
  configure do |config|
      config.failure_raise_out_environments = []
  end
end