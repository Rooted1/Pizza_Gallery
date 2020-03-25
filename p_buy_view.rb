require 'pry'

# do we need a total in the cart model?
# can we call it cart items instead of cart?

def buy_pizza_or_view_cart
    user_choice = $prompt.select("What do you want to do?", ["Buy a pizza","View my cart"])
    if user_choice == "Buy a pizza"
        pizza_choice = $prompt.select("Select a pizza from the list", ["Cheese","Hawaiian","Pepperoni"])
        case pizza_choice
            when "Cheese"
                x = Pizza.find_by(pizza_name: "Cheese")
                u = User.find_by(name: $name_input)

                # c = Order.new(u.id, x.id)
                # binding.pry

                c = Cart.find_by(user_id: u.id)
                # binding.pry
                c.update(total: x.price + c.total)
                # Cart.create({user_id: t.id, pizza_id: cheese_pizza.id, total: 0})
                # c = Cart.find_by(total)
                # c.update(total: cheese_pizza.price + c)
            when "Hawaiian"
                hawaiin_pizza
            when "Pepperoni"
                pepperoni_pizza
            else
                puts "We dont carry that pizza"
        end
    end

    if user_choice == "View my cart"
        user_name = $prompt.ask("What's Your Name?")
        # binding.pry
        u = User.find_by(name: user_name)
        r = Cart.find_by(user_id: u.id)
        # c = Cart.where(user_id: u.id)
        # l = c.map{|c| c.pizza_id}
        if u
            c = Cart.where(user_id: u.id)
            current_pizzas = u.pizzas.map{|p| p.pizza_name}
            if current_pizzas.length != 0
                t = c.map{|c| c.total}.sum # or Pizza.where(id: l).map{|p| p.price}.sum if didnt have a total in the cart model, "add prices up instead for total"
                p "You currently have: #{current_pizzas.join(",")}"
                p "Your total is: #{t}"
            else
                p "Your cart is empty"
                p "Your total is: #{t}"
            end
        elsif u == nil 
            p "You have no pizzas"
        end
    end
end

        # binding.pry
        # z = []
        # if user_name == u.name
        #     u.pizzas.all.each do |u|
        #         z.push(Pizza.find_by(id: u.id))
        #         # c = Cart.where(user_id: u.id)
        #         # c = c.all.map{|c| c.pizza_id}
        #         # Pizza.all.ids.include?(c)
        #         # binding.pry
        #     end
        #     return z.map{|p| p.pizza_name}
        # end

        # exsisting_user = User.where({ name: user_name })
        # if exsisting_user.length == 0
        #     current_user = User.create({ name: user_name })
        # else
        #     current_user = exsisting_user[0]
        # end
        # current_user