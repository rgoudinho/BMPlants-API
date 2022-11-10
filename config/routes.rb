Rails.application.routes.draw do
  resources :favorite_plants
  resources :plant_health_problems
  resources :health_problems
  resources :users
  resources :plants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/plants', to: 'plants#index'
  # get '/plants/:id', to: 'plants#show'
  # post '/plants', to: 'plants#create'
  # put '/plants/:id', to: 'plants#update'
  # delete '/plants/:id', to: 'plants#destroy'

  # get '/users', to: 'users#index'
  # get '/users/:id', to: 'users#show'
  # post '/users', to: 'users#create'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'
end
