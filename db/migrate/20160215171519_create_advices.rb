class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.string :title
      t.text :description
      t.attachment :avatar
      t.boolean :visible,:visible, :boolean, :default => true

      t.timestamps null: false
    end
  end
end
