class CommentSerializer < ActiveModel::Serializer
  attributes :comments, :commented_user

  belongs_to :commented_user
  belongs_to :commented_product
end
