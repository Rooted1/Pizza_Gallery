describe(Pizza) do
    it("can find pizza in Pizza array") do
      Pizza.create({pizza_name: "Vegetarian"})
      pizza = Pizza.find_by({pizza_name: "Vegetarian"})
      expect(Pizza.all).to(include(pizza))
    end

    it("can find instance of a method") do
      pizza = Pizza.find_by({pizza_name: "Vegetarian"})
      order = Order.create({pizza_id: pizza.id, cart_id: 1})
      expect(Order.find_by(pizza_id: pizza)).to(eq(order))
    end

    it ("can return an array of pizzas") do
      expect(Pizza.class).to(eq(Class))
    end

end
