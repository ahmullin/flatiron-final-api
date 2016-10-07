class SnippetSerializer < ActiveModel::Serializer
  attributes :id, :content, :approved, :chapter_id
end
