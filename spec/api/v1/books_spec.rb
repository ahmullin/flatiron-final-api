require 'rails_helper'

describe Book do
  before(:each) { @user1 = User.create(username: "sophie", first_name: "Sophie", last_name: "Debenedetto", email: "sophie@gmail.com", password: "password") }
  before(:each) { @book1 = Book.create(title: "Flatiron Tales", genre: "Adventure", description: "Quick brown fox") }
  before(:each) { @book2 = Book.create(title: "Dan Abramov: A Memoir", genre: "Memoir", description: "jumped over the") }
  before(:each) { @chapter1 = Chapter.create(title: "Chapter 1", description: "It was the best of times") }

  describe 'GET api/v1/books' do
    it 'retrieves all books in the api' do
      get '/api/v1/books'
      response_body = JSON.parse(response.body)
      expect(response).to be_success
      expect(response_body.length).to eq(2)
    end

    # it 'has a chapter nested within' do
    #   get '/api/v1/books'
    #   @book1.chapters << @chapter1
    #   @book1.save
    #   response_body = JSON.parse(response.body)
    #   expect(response_body[0]["chapters"].length).to eq(1)
    # end

  end

end
