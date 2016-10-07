User.create(username: "sophie", first_name: "Sophie", last_name: "Debenedetto", email: "sophie@gmail.com", password: "password")
User.create(username: "ali", first_name: "Ali", last_name: "Mullin", email: "ali@gmail.com", password: "password")
User.create(username: "logan", first_name: "Logan", last_name: "Gants", email: "logan@gmail.com", password: "password")
User.create(username: "francis", first_name: "Francis", last_name: "Rocco", email: "francis@gmail.com", password: "password")

15.times do
	Book.create(title: Faker::Book.title, author_id: rand(1..User.all.length), genre: Faker::Book.genre, description: Faker::Hipster.sentence)
end

15.times do
  UserBook.create(user_id: rand(1..User.all.length), book_id: rand(1..Book.all.length))
end

60.times do
	Chapter.create(title: "Chapter " + Faker::Hipster.word, author_id: rand(1..User.all.length), book_id: rand(1..Book.all.length), description: Faker::Hipster.sentence)
end

60.times do
  UserChapter.create(user_id: rand(1..User.all.length), chapter_id: rand(1..Chapter.all.length), vote_choice: rand(-1..1))
end

120.times do
	Snippet.create(content: Faker::Hipster.paragraph, chapter_id: rand(1..Chapter.all.length), approved: false)
end

120.times do
	UserSnippet.create(user_id: rand(1..User.all.length), snippet_id: rand(1..Snippet.all.length), vote_choice: rand(-1..1))
end
