class Book < ApplicationRecord
  has_many :user_books
  has_many :users, through: :user_books
  has_many :chapters
  has_many :snippets, through: :chapters
end
