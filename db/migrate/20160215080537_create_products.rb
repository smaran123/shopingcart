class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.float :discount
      t.boolean :flag
      t.boolean :is_featured,  :boolean, :default => false

      t.integer :quantity, :default => 0
      t.integer :sub_category_id
      t.string :color
      t.string :product_size
     # t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
