module Api
  module V1
    class BooksController < ApplicationController

      def index
        render json: Book.all
      end

      def create
        book = Book.new(book_params)
          if book.save
            render json: book
          else
            render json: book.errors, status: 500
          end
      end


      def show
        render json: Book.find(params[:id])
      end


      def edit
      end

      def update
      end

      def destroy
      end

      private

        def book_params
          params.require(:book).permit(:title, :genre, :description, :user_id)
        end

    end
  end
end
