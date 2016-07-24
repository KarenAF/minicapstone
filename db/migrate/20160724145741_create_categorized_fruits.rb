class CreateCategorizedFruits < ActiveRecord::Migration
  def change
    create_table :categorized_fruits do |t|
      t.integer :fruit_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
