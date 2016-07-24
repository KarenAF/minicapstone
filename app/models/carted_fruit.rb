class CartedFruit < ActiveRecord::Base
  belongs_to :order
  belongs_to :user
  belongs_to :fruit
end
