require 'rails_helper'

describe User do
  before(:each) { @user1 = User.create(username: "sophie", first_name: "Sophie", last_name: "Debenedetto", email: "sophie@gmail.com", password: "password") }

  describe 'GET api/v1/users/1' do
    it 'retrieves a user data in the api' do
      get '/api/v1/users/1'
      response_body = JSON.parse(response.body)
      expect(response).to be_success
      expect(response_body.length).to eq(1)
    end
  end

end
