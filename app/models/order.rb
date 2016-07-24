class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_fruits
  has_many :fruits, through: :carted_fruits
end
