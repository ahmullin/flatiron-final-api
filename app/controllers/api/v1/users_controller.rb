module Api
  module V1
    class UsersController < ApplicationController

      def index
        render json: User.all
      end

      def create
        user = User.new(user_params)
          if user.save
            render json: user
          else
            render json: user.errors, status: 500
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
