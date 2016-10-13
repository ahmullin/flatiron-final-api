Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :books
      resources :chapters
      resources :snippets
      resources :user_chapters
      resources :user_snippets
      post '/login', to: "sessions#create"
      post '/chapter_vote', to: "user_chapters#vote"
      post '/snippet_vote', to: "user_snippets#vote"
    end
  end
end
