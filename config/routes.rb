Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :books
      resources :chapters
      resources :snippets
      post '/login', to: "sessions#create"
    end
  end
end
