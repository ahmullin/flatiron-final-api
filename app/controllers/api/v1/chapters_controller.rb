module Api
  module V1
    class ChaptersController < ApplicationController

      def create
        chapter = Chapter.new(chapter_params)
          if chapter.save
            render json: chapter
          else
            render json: chapter.errors, status: 500
          end
      end
      
      def show
        render json: Chapter.find(params[:id])
      end

      def edit
      end

      def update
      end

      def destroy
      end

      private
        def chapter_params
          params.require(:chapter).permit(:title, :description, :book_id)
        end

    end
  end
end
