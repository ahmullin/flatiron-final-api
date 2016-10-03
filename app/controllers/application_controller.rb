class ApplicationController < ActionController::API
  # before_action :authenticate

  def authenticate
    if request.env["HTTP_AUTHORIZATION"]
      token = request.env["HTTP_AUTHORIZATION"].split(" ").last
      decoded_token_info = JWT.decode(token, ENV["AUTH_SECRET_KEY"], true, {algorithm: 'HS256'})
      user_id = decoded_token_info.first["id"]
      if User.find(user_id)
        @current_user ||= User.find(user_id)
      else
        render json: {error: 'GET OUT'}
      end
    else
      render json: {error: 'GET OUT'}
    end
  end

  def current_user
    @current_user
  end

end
