class ApplicationController < ActionController::Base
  before_action :require_login
  skip_forgery_protection

  def encode_token(payload)
    JWT.encode(payload, ENV["SECRET_API_KEY"])
  end

  def auth_header 
    puts request.headers['Authorization']
    request.headers['Authorization']
  end

  def decoded_token 
    if auth_header 
      token = auth_header.split(' ')[1]
      begin 
        JWT.decode(token, ENV["SECRET_API_KEY"], true, algorithm: 'HS256')
      rescue JWT::DecodeError
        []
      end
    end
  end

  def current_user
    decoded_hash = decoded_token 
    if !decoded_hash.empty? 
      user_id = decoded_hash[0]['user_id']
      @user = User.find_by(id: user_id)
    else 
      nil
    end
  end

  def logged_in?
    !!current_user
  end

  def require_login
    render json: {message: 'Please Login'}, status: :unauthorized unless logged_in?
  end

end