class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description

  has_many :chapters
end
