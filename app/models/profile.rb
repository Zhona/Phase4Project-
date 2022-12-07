class Profile < ApplicationRecord
    belongs_to :user

    validate :user_id, :first_name, :Last_name, :email, :password_digest
end
