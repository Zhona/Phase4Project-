class Comment < ApplicationRecord
    belongs_to :commented_user, :class_name => "User", :foreign_key => "user_id"
    belongs_to :user
    belongs_to :commented_product, :class_name => "Product", :foreign_key => "product_id"
    belongs_to :product

    validate :comments, :user_id, :product_id
end
