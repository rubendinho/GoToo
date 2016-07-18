Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_CONFIG['facebook_app_id'], FACEBOOK_CONFIG['facebook_secret'], {:scope => 'user_about_me'}
end
