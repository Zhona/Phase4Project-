Rails.application.routes.draw do
  resources :categories, only: [:show, :update]
  resources :likes, only: [:show, :update]
  resources :comments, only: [:create, :index, :show, :delete]
  resources :profiles, only: [:create, :update, :delete]
  resources :users, only: [:create, :show, :update, :delete]
  resources :productsls
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
