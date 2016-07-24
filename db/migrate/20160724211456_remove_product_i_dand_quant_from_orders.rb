class RemoveProductIDandQuantFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :quantity, :integer
    remove_column :orders, :fruit_id, :integer
  end
end
