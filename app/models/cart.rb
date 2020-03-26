class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  has_many :pizzas, through: :orders
end
