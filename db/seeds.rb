# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sophie = User.create(username: "sophie", first_name: "Sophie", last_name: "Debenedetto", email: "sophie@gmail.com", password: "password")

new_book = Book.create(title: "Flatiron Tales", genre: "adventure", description: "a story about love")

UserBook.create(user_id: sophie.id, book_id: new_book.id)

chapter1 = Chapter.create(title: "Chapter 1", book_id: new_book.id, description: "The first chapter")

first_snippet = Snippet.create(content: "It was the best of times.", chapter_id:chapter1.id, user_id: sophie.id, approved: true)
