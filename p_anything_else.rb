require_relative './p_buy_view.rb'

def anything_else?
    final_choice = $prompt.select("Anything Else?", ["Yes","No"])
    case final_choice
        when "No"
            puts "Thank You for shopping Pizza Gallery"
        when "Yes"
            buy_pizza_or_view_cart
        end
end