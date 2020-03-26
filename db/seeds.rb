User.destroy_all
Pizza.destroy_all
Cart.destroy_all
u1 = User.create({name: "Isaac"})
u2 = User.create({name: "Ruth"})
pp = Pizza.create({pizza_name: "Pepperoni", price: 5.50, description: "Pepperoni pizza comes with many pepperoni!"})
hp = Pizza.create({pizza_name: "Hawaiian", price: 6.50, description: "Hawaiian pizza comes with fresh pineapple!"})
cp = Pizza.create({pizza_name: "Cheese", price: 4.25, description: "Cheese pizza made with real cheese!"})
sp = Pizza.create({pizza_name: "Supreme Pizza", price: 8.50, description: "Supreme pizza comes with an assorted variety!"})
gp = Pizza.create({pizza_name: "Greek Pizza", price: 7.75, description: "Greek pizza comes with an tomatoes, olives, mushrooms and onions!"})
vp = Pizza.create({pizza_name: "Vegeterian Pizza", price: 6.75, description: "Vegeterian pizza comes with many vegstables!"})
c1 = Cart.create({user_id: u1.id, total: 20.00})
o1 = Order.create({pizza_id: pp.id, cart_id: c1.id})
o2 = Order.create({pizza_id: hp.id, cart_id: c1.id})
