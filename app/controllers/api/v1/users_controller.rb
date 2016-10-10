module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate, only: [:create]

      def index
        render json: User.all
      end

      def create
        user = User.new(user_params)
        if user.save
          token = JWT.encode({id: user.id}, ENV["AUTH_SECRET_KEY"], 'HS256')
          render json: {jwt: token, currentUserId: user.id}
        else
          render json: {error: "could not authenticate this user"}
        end
      end

      def show
        render json: User.find(params[:id])
      end

      def edit
      end

      def update
      end

      def destroy
      end

      private

      def user_params
        params.require(:user).permit(:username, :email, :password, :first_name, :last_name)
      end

    end
  end
end
