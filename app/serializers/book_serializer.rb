class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :users
  has_many :chapters
end
