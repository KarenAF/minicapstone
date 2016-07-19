class AddSupplierIdToProducts < ActiveRecord::Migration
  def change
    add_column :fruits, :supplier_id, :integer
  end
end
