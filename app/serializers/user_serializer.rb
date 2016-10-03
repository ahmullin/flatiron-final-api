class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :username, :first_name, :last_name

  has_many :books
  has_many :snippets
end
