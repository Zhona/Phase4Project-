class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :product_id
      t.boolean :liked

      t.timestamps
    end
  end
end
