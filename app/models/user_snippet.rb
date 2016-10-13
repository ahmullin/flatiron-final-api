class UserSnippet < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :snippet, optional: true

  def self.vote_count(snippet_id)
    allVotes = UserSnippet.where(snippet_id: snippet_id)
    allVotes.sum(:vote_choice)
  end

end
