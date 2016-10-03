class Snippet < ApplicationRecord
  belongs_to :chapter
  belongs_to :user

  delegate :book, :to => :chapter, :allow_nil => true

end
