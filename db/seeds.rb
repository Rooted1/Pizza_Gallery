User.destroy_all
Pizza.destroy_all
Cart.destroy_all
u1 = User.create({name: "Isaac"})
u2 = User.create({name: "Ruth"})
p1 = Pizza.create({pizza_name: "Pepperoni", price: 5.50, description: "Pepperoni pizza comes with cheese"})
p2 = Pizza.create({pizza_name: "Hawaiian", price: 6.50, description: "Hawaiian pizza comes with pineapple"})
p3 = Pizza.create({pizza_name: "Vegeterian", price: 4.50, description: "Pepperoni pizza comes with vegstables"})
c1 = Cart.create({user_id: u1.id, pizza_id: p1.id, total: 10.00})
c2 = Cart.create({user_id: u2.id, pizza_id: p2.id, total: 14.00})
c3 = Cart.create({user_id: u1.id, pizza_id: p3.id, total: 16.00})
c4 = Cart.create({user_id: u2.id, pizza_id: p1.id, total: 12.00})
