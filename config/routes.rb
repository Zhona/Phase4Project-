Rails.application.routes.draw do
  resources :categories, only: [:index, :show, :update]
  resources :likes, only: [:index, :show, :update]
  resources :comments, only: [:create, :index, :show, :destroy]
  resources :users 
  resources :products

  # post "/users", to: "users#create"
  get "/me", to: "users#me"
  post "/auth/login", to: "auth#login"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
