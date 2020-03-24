class User < ActiveRecord::Base
  has_many :carts
  has_many :pizzas, through: :carts
end
