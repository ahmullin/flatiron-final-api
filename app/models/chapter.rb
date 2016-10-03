class Chapter < ApplicationRecord
  belongs_to :book, optional: true
  has_many :snippets
end
