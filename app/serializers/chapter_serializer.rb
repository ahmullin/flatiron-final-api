class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_many :snippets
end
