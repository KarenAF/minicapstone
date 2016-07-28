class CartedFruit < ActiveRecord::Base
  belongs_to :order
  belongs_to :user
  belongs_to :fruit

  validates :quantity, presence: true
  validates :quantity, numericality: {greater_than: 0}
end
