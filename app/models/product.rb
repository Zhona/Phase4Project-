class Product < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :likes
    belongs_to :user
    has_many :commented_users, through: :comments 
    has_many :users, through: :likes 

    validate :user_id, :name, :price, :url, :description, :like_count
end
