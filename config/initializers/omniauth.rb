Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['facebook_app_id'], ENV['facebook_secret'], { scope: FACEBOOK_CONFIG }
  provider :google_oauth2, ENV['google_client_id'], ENV['google_client_secret'], { scope: GOOGLE_CONFIG }
  provider :twitter, ENV['twitter_key'], ENV['twitter_secret'], { :secure_image_url => 'true', :image_size => 'original' }
  configure do |config|
      config.failure_raise_out_environments = []
  end
end