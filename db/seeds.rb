User.create(username: "sophie", first_name: "Sophie", last_name: "Debenedetto", email: "sophie@gmail.com", password: "password")
User.create(username: "ali", first_name: "Ali", last_name: "Mullin", email: "ali@gmail.com", password: "password")
User.create(username: "logan", first_name: "Logan", last_name: "Gants", email: "logan@gmail.com", password: "password")
User.create(username: "francis", first_name: "Francis", last_name: "Rocco", email: "francis@gmail.com", password: "password")

15.times do
	Book.create(title: Faker::Book.title, genre: Faker::Book.genre, description: Faker::Hipster.sentence)
end

15.times do
  UserBook.create
end

UserBook.all.each do |userbook|
  userbook.user_id = rand(1..User.all.length)
  userbook.book_id = rand(1..Book.all.length)
  userbook.save
end

30.times do
	Chapter.create(title: "Chapter " + Faker::Hipster.word, description: Faker::Hipster.sentence)
end

Chapter.all.each do |chapter|
  chapter.book_id = rand(1..Book.all.length)
  chapter.save
end

60.times do
	Snippet.create(content: Faker::Hipster.paragraph, approved: true)
end

Snippet.all.each do |snippet|
  snippet.chapter_id = rand(1..Chapter.all.length)
  snippet.user_id = rand(1..User.all.length)
  snippet.save
end
