module Api
  module V1
    class UserChaptersController < ApplicationController

      def index
        output = UserChapter.all.map do |user_chapter_object|
          result = {}
          chapter_id = user_chapter_object.chapter_id
          result[:chapterId] = chapter_id
          result[:total] = UserChapter.vote_count(chapter_id)
          result
        end
        render json: output
      end

      def vote
        user_id = user_chapter_params[:user_id].to_i
        chapter_id = user_chapter_params[:chapter_id]
        vote_choice = user_chapter_params[:vote_choice].to_i


        if UserChapter.find_by(user_id: user_id, chapter_id: chapter_id)
          user_chapter = UserChapter.find_by(user_id: user_id, chapter_id: chapter_id)
          if vote_choice == 1
            if user_chapter.vote_choice == 1
              user_chapter.vote_choice = 0
            else
              user_chapter.vote_choice = 1
            end
          elsif vote_choice == -1
            if user_chapter.vote_choice == -1
              user_chapter.vote_choice = 0
            else
              user_chapter.vote_choice = -1
            end
          end
        else
          user_chapter = UserChapter.create(user_id: user_id, chapter_id: chapter_id, vote_choice: vote_choice)
      end

        if user_chapter.save
          total = UserChapter.vote_count(chapter_id)
          render json: {user_chapter: user_chapter, vote_total: total}
        else
          render json: user_chapter.errors, status: 500
        end
      end


      def show
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
