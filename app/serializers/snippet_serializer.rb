class SnippetSerializer < ActiveModel::Serializer
  attributes :id, :content, :approved
end
