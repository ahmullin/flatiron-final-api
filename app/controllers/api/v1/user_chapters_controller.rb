module Api
  module V1
    class UserChaptersController < ApplicationController

      def vote
        user_id = params[:data][:user_id]
        chapter_id = params[:data][:chapter_id]
        vote_choice = params[:data][:vote_chioce]

        if UserChapter.find_by(user_id: user_id, chapter_id: chapter_id)
          old_user_chapter = UserChapter.find_by(user_id: user_id, chapter_id: chapter_id)
          if vote_choice == 1
            if old_user_chapter.vote_choice == 1
              # set old to 0
            elsif old_user_chapter.vote_choice == -1
              # set old to 0
            elsif old_user_chapter.vote_choice == 0
              # where old user vote is 0
              #set to 1
            end
          else vote_choice == -1
            if old_user_chapter.vote_choice == 1
              # set old to 0
            elsif old_user_chapter.vote_choice == -1
              # set old to 0
            elsif old_user_chapter.vote_choice == 0
              # where old user vote is 0
              #set to -1
            end
          end
        else UserChapter.create(user_id: user_id, chapter_id: chapter_id, vote_choice: vote_choice)
      end

        if vote.save
          render json: vote
        else
          render json: vote.errors, status: 500
        end
      end


      def show
        render json: Snippet.find(params[:id])
      end

      def edit
      end

      def update
      end

      def destroy
      end

      private
        def user_chapter_params
          params.require(:data).permit(:user_id, :chapter_id, :vote_choice)
        end

      end

    end
  end
end
