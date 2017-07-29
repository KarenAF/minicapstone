class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_fruits
  has_many :fruits, through: :carted_fruits

  validates :user_id, presence: true
  validates :subtotal, numericality: {greater_than: 0}
  validates :total, numericality: {greater_than: 0}
  validates :tax, numericality: {greater_than: 0}

  def calculate_totals(input_carted_fruits)
    subtotal = 0
    input_carted_fruits.each do |carted_fruits|
      subtotal += carted_fruits.quantity * carted_fruits.fruit.price
    end
  end
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
