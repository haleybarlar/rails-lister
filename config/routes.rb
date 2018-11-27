Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'auth#show'
      get '/users', to: 'users#index'
      get '/users/:id', to: 'users#index'
      get '/lists', to: 'lists#index'
      get '/tasks', to: 'tasks#index'
      get '/tasks/:id', to: 'tasks#show'
      resources :lists
      resources :tasks
    end
  end
end
