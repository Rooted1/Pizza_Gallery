require_relative './config/environment.rb'
require_relative './program1.rb'

$prompt = TTY::Prompt.new()
def start_app
    puts "Welcome to:"

    a = Artii::Base.new(:font => 'slant')
    puts a.asciify("Pizza Gallery")

    puts "What is your name?"
    name_input = gets.strip
    puts "Welcome #{name_input}"

    test(name_input)
    buy_pizza
end

# def test(name)
#     puts "your name is #{name}"
# end

# puts "Welcome to:"

# a = Artii::Base.new(:font => 'slant')
# puts a.asciify("Pizza Gallery")

# prompt = TTY::Prompt.new()
# puts "What is your name?"
# name_input = gets.strip

# def new_user
#     User.create({name: name_input})
# end
# puts "Welcome #{name_input}"

def cheese_pizza
    Pizza.create({pizza_name: "Cheese Pizza", price: 4.50, description: "Pizza contans real cheese , for cheese lovers"})
    puts "One cheese pizza coming up"
end

def hawaiin_pizza
    Pizza.create({pizza_name: "Hawaiian Pizza", price: 7.50, description: "Hawaiian"})
end

def pepperoni_pizza
    Pizza.create({pizza_name: "Pepperoni Pizza", price: 5.50, description: "Pepperoni"})
end


def buy_pizza
    user_choice = $prompt.select("What do you want to do?", ["Buy a pizza","View my cart"])
    if user_choice == "Buy a pizza"
        pizza_choice = $prompt.select("Select a pizza for the list", ["cheese","hawaiian","pepperoni"])
        case pizza_choice
            when "cheese"
                cheese_pizza
                t = User.find_by(name: name_input)
                Cart.create({user_id: t.id, pizza_id: cheese_pizza.id, total: 0})
                c = Cart.find_by(total)
                c.update(total: cheese_pizza.price + c)
            when "hawaiian"
                hawaiin_pizza
            when "pepperoni"
                pepperoni_pizza
            else
                puts "We dont carry that pizza"
        end
    end
end
# if user_choice == "View my cart"
#     user_name = prompt.ask("What's Your Name?")

#     exsisting_user = User.where({ name: user_name })
#     if exsisting_user.length == 0
#         current_user = User.create({ name: user_name })
#     else
#         current_user = exsisting_user[0]
#     end
#     return current_user.pizzas
# end

start_app
