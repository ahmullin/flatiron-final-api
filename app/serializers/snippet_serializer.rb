class SnippetSerializer < ActiveModel::Serializer
  attributes :id, :content, :approved, :chapter_id, :author_id
end
