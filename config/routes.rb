Rails.application.routes.draw do
  resources :categories, only: [:index, :show, :update]
  resources :likes, only: [:index, :show, :update]
  resources :comments, only: [:create, :index, :show, :destroy]
  resources :profiles 
  resources :users 
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
