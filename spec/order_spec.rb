require "pry"

describe(Order) do
    it("can create an order and search by id") do
      Pizza.create({pizza_name: "Greek Pizza"})
      User.create({name: "Nathaniel"})
      pizza = Pizza.find_by(pizza_name: "Greek Pizza")
      user = User.find_by(name: "Nathaniel")
      Cart.create({user_id: user.id})
      cart = Cart.find_by(user_id: user.id)
      order = Order.create(pizza_id: pizza.id, cart_id: cart.id)
      expect(order.cart_id).to eq(cart.id)
    end


end
