class Product < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    belongs_to :user
    has_many :users, through :comments 
    has_many :users, through :likes 






end
