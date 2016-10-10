class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :book_id, :author_id, :approved

  has_many :snippets
end
