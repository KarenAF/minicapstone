class CreateCartedFruits < ActiveRecord::Migration
  def change
    create_table :carted_fruits do |t|
      t.integer :user_id
      t.integer :fruit_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
