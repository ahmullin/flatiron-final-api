class Snippet < ApplicationRecord
  belongs_to :chapter, optional: true
  belongs_to :user, optional: true

  delegate :book, :to => :chapter, :allow_nil => true

end
