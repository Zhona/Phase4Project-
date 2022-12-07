class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar , :products

  has_many :products
end
