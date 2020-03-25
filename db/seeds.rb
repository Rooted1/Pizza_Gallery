User.destroy_all
Pizza.destroy_all
Cart.destroy_all
u1 = User.create({name: "Isaac"})
u2 = User.create({name: "Ruth"})
pp = Pizza.create({pizza_name: "Pepperoni", price: 5.50, description: "Pepperoni pizza comes with cheese"})
hp = Pizza.create({pizza_name: "Hawaiian", price: 6.50, description: "Hawaiian pizza comes with pineapple"})
cp = Pizza.create({pizza_name: "Cheese", price: 4.50, description: "Pepperoni pizza comes with vegstables"})
c1 = Cart.create({user_id: u1.id, total: 20.00})
# c2 = Cart.create({user_id: u2.id, pizza_id: hp.id, total: 0})
# c3 = Cart.create({user_id: u1.id, pizza_id: cp.id, total: 0})
# c4 = Cart.create({user_id: u2.id, pizza_id: pp.id, total: 0})
o1 = Order.create({pizza_id: pp.id, cart_id: c1.id})
o1 = Order.create({pizza_id: hp.id, cart_id: c1.id})
