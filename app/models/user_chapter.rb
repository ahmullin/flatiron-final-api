class UserChapter < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :chapter, optional: true

  def self.vote_count(chapter_id)
    allVotes = UserChapter.where(chapter_id: chapter_id)
    allVotes.sum(:vote_choice)
  end

end
