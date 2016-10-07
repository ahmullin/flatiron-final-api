class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :users, :author_id
  has_many :chapters

  def author_id
    userbook = UserBook.where(book_id: object.id, author: true).first
    userbook ? userbook.user_id : 1
  end

end
