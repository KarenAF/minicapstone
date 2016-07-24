class Category < ActiveRecord::Base
  has_many :categorized_fruits
  has_many :products, through: :categorized_fruits

end
