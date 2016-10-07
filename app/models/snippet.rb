class Snippet < ApplicationRecord
  has_many :user_snippets
  has_many :users, through: :user_snippets
  belongs_to :chapter, optional: true

  delegate :book, :to => :chapter, :allow_nil => true
end
