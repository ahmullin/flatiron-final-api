class User < ApplicationRecord
  has_secure_password
  has_many :user_books
  has_many :books, through: :user_books
  has_many :user_chapters
  has_many :chapters, through: :user_chapters
  has_many :user_snippets
  has_many :snippets, through: :user_snippets

end
