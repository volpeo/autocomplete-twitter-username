Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, $twitter['key'], $twitter['secret']
end