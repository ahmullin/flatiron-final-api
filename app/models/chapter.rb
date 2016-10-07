class Chapter < ApplicationRecord
  has_many :user_chapters
  has_many :users, through: :user_chapters
  belongs_to :book, optional: true
  has_many :snippets,  dependent: :destroy 
end
