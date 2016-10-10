module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate

      def create
        user = User.find_by(email: session_params[:email])
        if user.authenticate(session_params[:password])
          token = JWT.encode({id: user.id}, ENV["AUTH_SECRET_KEY"], 'HS256')
          render json: {jwt: token, currentUserId: user.id}
        else
          render json: {error: "could not authenticate this user"}
        end
      end

      private

      def session_params
        params.require(:session).permit(:email, :password)
      end

    end
  end
end
