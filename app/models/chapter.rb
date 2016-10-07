class Chapter < ApplicationRecord
  belongs_to :book, optional: true
  has_many :snippets,  dependent: :destroy 
end
