class ChangePriceFromStringToDecimal < ActiveRecord::Migration
  def change
    change_column :fruits, :price, "numeric USING CAST(price AS numeric)"
    change_column :fruits, :price, :decimal, precision: 9, scale: 2
  end
end
