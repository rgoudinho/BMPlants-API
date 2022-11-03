Rails.application.routes.draw do
  resources :favorite_plants
  resources :plant_health_problems
  resources :health_problems
  resources :users
  resources :plants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
