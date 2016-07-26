class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_fruits
  has_many :fruits, through: :carted_fruits

  # def tax
  #   price * 0.09 * quantity
  # end

  # def total
  #   price * 1.09 * quantity
  # end

  # def subtotal
  #   price * quantity * 1.09
  # end
end
