module Api
  module V1
    class SnippetsController < ApplicationController

      def create
        snippet = Snippet.new(snippet_params)
          if snippet.save
            render json: snippet
          else
            render json: snippet.errors, status: 500
          end
      end

      def show
        render json: Snippet.find(params[:id])
      end

      def update
        snippet = Snippet.find(params[:id])
        snippet.approved = true
        if snippet.save
          render json: snippet
        else
          render json: snippet.errors, status: 500
        end
      end

      def destroy
        Snippet.find(params[:id]).destroy
      end

      private
        def snippet_params
          params.require(:snippet).permit(:content, :approved, :user_id, :chapter_id, :author_id)
        end

    end
  end
end
