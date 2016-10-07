class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :book_id, :author_id

  has_many :snippets
end
