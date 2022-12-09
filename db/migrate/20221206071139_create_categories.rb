class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.boolean :is3d
      t.integer :product_id

      t.timestamps
    end
  end
end
