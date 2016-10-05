class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :book_id

  has_many :snippets
end
