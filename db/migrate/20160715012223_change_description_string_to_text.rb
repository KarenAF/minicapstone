class ChangeDescriptionStringToText < ActiveRecord::Migration
  def change
    change_column :fruits, :description, :text
  end
end
