class Category < ActiveRecord::Base
  has_many :categorized_fruits
  has_many :fruits, through: :categorized_fruits
end
