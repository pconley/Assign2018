Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    '6L4JLl5hPCVyOn50eS1m6ig4YY7SVcG3', # client id
    'ozhoghxkyjcZE-hH3CzkJHbfadrgqHJhkQQc5gYHqjSL0LXOn4_0UeT77TPm8oaA', # secret
    'kazoku.auth0.com', # domain
    callback_path: "/auth/oauth2/callback",
    authorize_params: {
      scope: 'openid profile',
      audience: 'https://kazoku.auth0.com/userinfo'
    }
  )
end