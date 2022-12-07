class ProductSerializer < ActiveModel::Serializer
  attributes :user_id, :price, :url, :description, :like_count, :name

  has_many :comments 


end
