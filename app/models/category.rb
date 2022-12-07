class Category < ApplicationRecord
    belongs_to :product

    validate :is3d, :product_id
end
