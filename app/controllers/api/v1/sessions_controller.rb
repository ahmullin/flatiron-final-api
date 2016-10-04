module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate

      def create
        user = User.find_by(id: params[:id])
        if user.authenticate(params[:password])
          token = JWT.encode({id: user.id}, ENV["AUTH_SECRET_KEY"], 'HS256')
          render json: {jwt: token}
        else
          render json: {error: "could not authenticate this user"}
        end
      end

    end
  end
end
