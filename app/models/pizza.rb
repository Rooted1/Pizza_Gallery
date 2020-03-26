class Pizza < ActiveRecord::Base
  has_many :orders
  has_many :carts, through: :orders
end
