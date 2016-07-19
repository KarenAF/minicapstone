class RemoveImageFromFruits < ActiveRecord::Migration
  def change
    remove_column :fruits, :image, :string
  end
end
