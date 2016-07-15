class AddInStockAttributeToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :availability, :boolean
  end
end
