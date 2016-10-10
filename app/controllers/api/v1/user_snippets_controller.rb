module Api
  module V1
    class UserSnippetsController < ApplicationController

      def index
        output = UserSnippet.all.map do |user_snippet_object|
          result = {}
          snippet_id = user_snippet_object.snippet_id
          result[:snippetId] = snippet_id
          result[:total] = UserSnippet.vote_count(snippet_id)
          result
        end
        render json: output
      end

      def vote
        user_id = user_snippet_params[:user_id].to_i
        snippet_id = user_snippet_params[:snippet_id]
        vote_choice = user_snippet_params[:vote_choice].to_i


        if UserSnippet.find_by(user_id: user_id, snippet_id: snippet_id)
          user_snippet = UserSnippet.find_by(user_id: user_id, snippet_id: snippet_id)
          if vote_choice == 1
            if user_snippet.vote_choice == 1
              user_snippet.vote_choice = 0
            else
              user_snippet.vote_choice = 1
            end
          elsif vote_choice == -1
            if user_snippet.vote_choice == -1
              user_snippet.vote_choice = 0
            else
              user_snippet.vote_choice = -1
            end
          end
        else
          user_snippet = UserSnippet.create(user_id: user_id, snippet_id: snippet_id, vote_choice: vote_choice)
      end

        if user_snippet.save
          total = UserSnippet.vote_count(snippet_id)
          render json: {user_snippet: user_snippet, vote_total: total}
        else
          render json: user_snippet.errors, status: 500
        end
      end


      private
        def user_snippet_params
          params.require(:data).permit(:user_id, :snippet_id, :vote_choice)
        end


    end
  end
end
