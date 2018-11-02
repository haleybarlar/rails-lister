Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :lists
      resources :tasks

    end
  end
  get '/api/v1/users', to: 'users#index'
  get '/api/v1/lists', to: 'lists#index'
  get '/api/v1/tasks', to: 'tasks#index'
  get '/api/v1/tasks/:id', to: 'tasks#show'
end
