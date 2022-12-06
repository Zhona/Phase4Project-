class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :Last_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
