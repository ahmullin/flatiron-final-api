class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :users, :author_id

  has_many :chapters
  has_many :snippets
end
