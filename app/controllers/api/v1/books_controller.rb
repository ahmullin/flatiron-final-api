module Api
  module V1
    class BooksController < ApplicationController

      def index
        render json: Book.all.order('created_at DESC'), include: {chapters: [:snippets]}
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
        Book.find(params[:id]).destroy
      end

      private

        def book_params
          params.require(:book).permit(:title, :genre, :description, :author_id)
        end

    end
  end
end
