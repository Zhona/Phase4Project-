class User < ApplicationRecord
    has_many :comments
    has_many :likes
    has_many :products
    has_one :profile 
    has_many :commented_products, through: :comments 
    # has_many :products, through: :likes 

    validates :avatar, :username, presence: true 
end
