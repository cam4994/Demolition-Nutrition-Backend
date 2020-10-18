if Rails.env === 'production'
    Rails.application.config.session_store :cookie_store, key: '_hellosessions', domain: 'hellosessions-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_hellosessions'
end