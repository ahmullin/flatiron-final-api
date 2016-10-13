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

      def update
        chapter = Chapter.find(params[:id])
        chapter.approved = true
        if chapter.save
          chapter.snippets.each do |snippet|
            snippet.approved = true
            snippet.save
          end
          render json: chapter
        else
          render json: chapter.errors, status: 500
        end
      end

      def destroy
      end

      private
        def chapter_params
          params.require(:chapter).permit(:title, :description, :book_id, :author_id, :approved)
        end

    end
  end
end
