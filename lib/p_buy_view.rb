require 'pry'
def create_order(pizza)
    users_pizza = Pizza.find_by(pizza_name: pizza)
    current_user = User.find_by(name: $name_input)
    users_cart = Cart.find_by(user_id: current_user.id)
    users_order = Order.create(pizza_id: users_pizza.id, cart_id: users_cart.id)
end



def buy_pizza_or_view_cart
    user_choice = $prompt.select("What do you want to do?", ["Buy a pizza","View my cart"])
    if user_choice == "Buy a pizza"
        pizza_choice = $prompt.select("Select a pizza from the list", ["Cheese","Hawaiian","Pepperoni"])
        case pizza_choice
            when "Cheese"
                create_order("Cheese")
            when "Hawaiian"
                create_order("Hawaiian")
            when "Pepperoni"
                create_order("Pepperoni")
        end
    end

    if user_choice == "View my cart"
        current_user = User.find_by(name: $name_input)
        users_cart = Cart.find_by(user_id: current_user.id)
        if users_cart == nil
            puts "Your cart is empty"
        else
            cart_total = 0
            cart_items = []
            users_cart.orders.each do |order|
                cart_items << order.pizza.pizza_name
                cart_total += order.pizza.price
            end
            puts "Items currently in your cart: #{cart_items.join(", ")}"
            puts "Your total is: #{cart_total}"
        end
    end
end