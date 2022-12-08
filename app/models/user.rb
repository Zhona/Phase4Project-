class User < ApplicationRecord

    has_many :comments
    has_many :likes
    has_many :products
    has_one :profile 
    has_many :commented_products, through: :comments 
    # has_many :products, through: :likes 

   has_secure_password
    validates :email, :username, :password,  presence: true 
    validates :username, :email, uniqueness: true
end
