Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :recipes, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/recipes', to: 'recipes#index'
      #get '/result', to: 'recipes#search_recipes'
      post '/search', to: 'recipes#search_recipes'
      post '/save', to: 'recipes#create_recipes'
      get '/likes', to: 'likes#index'
      post '/likes', to: 'likes#create_like'
      delete '/likes', to: 'likes#delete_like'
    end
  end
end
