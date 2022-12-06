class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.float :price
      t.string :url
      t.text :description
      t.integer :like_count

      t.timestamps
    end
  end
end
