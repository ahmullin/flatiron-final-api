class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :users, :author_id, :complete

  has_many :chapters
  has_many :snippets
end
