class Pizza < ActiveRecord::Base
  has_many :carts
  has_many :users, through: :carts

  # def cheese_pizza
  #   self.create({pizza_name: "Cheese Pizza", price: 4.50, description: "Pizza contans real cheese , for cheese lovers"})
  #   puts "One cheese pizza coming up"
  # end
end
