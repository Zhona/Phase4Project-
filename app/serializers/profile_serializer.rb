class ProfileSerializer < ActiveModel::Serializer
  attributes :user_id, :first_name, :Last_name, :email, :password_digest

  belongs_to :user 

end
