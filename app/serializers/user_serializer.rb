class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :email, :products

  has_many :products
end
