class CategorizedFruit < ActiveRecord::Base
  belongs_to :fruit
  belongs_to :category
end
