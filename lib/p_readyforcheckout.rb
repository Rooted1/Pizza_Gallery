require_relative './p_buy_view.rb'

# validate user card number and input length
def validate_card_number?(user_card)
  user_card = user_card.to_s unless user_card.is_a? String
  /^[0-9]{10}$\z/.match user_card
end

# get user card number, test validity, calculate total, and empty cart when done
def checkout
  loop do
    puts "Please enter your 10 digit Card Number:"
    cc_input = nil
    cc_input = gets.strip
    break if validate_card_number?(cc_input)
  end

  current_user = User.find_by(name: $name_input)
  users_cart = Cart.find_by(user_id: current_user.id)
  cart_total = 0
  a = users_cart.orders.map do |order|
    cart_total += order.pizza.price
    order.pizza.pizza_name
  end
  users_cart.orders.clear
  user_choice = "done"
  puts "Thank You for shopping Pizza Gallery, Come Again!"
end

# checkout user cart items
def ready_for_checkout?
    loop do
      user_choice = $prompt.select("Ready for checkout?", ["Yes","No"])
      case user_choice
        when "No"
          buy_pizza_or_view_cart
        when "Yes"
          checkout
          break
      end
    end
end
