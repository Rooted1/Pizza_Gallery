require_relative './config/environment.rb'
require_relative './p_pizzas.rb'
require_relative './p_buy_view.rb'
require_relative './p_anything_else.rb'
require_relative './p_finduser.rb'

$prompt = TTY::Prompt.new()
def start_app
    puts "Welcome to:"

    a = Artii::Base.new(:font => 'slant')
    puts a.asciify("Pizza Gallery")

    puts "What is your name?"
    $name_input = gets.strip
    find_user
    puts "Welcome #{$name_input}"
    buy_pizza_or_view_cart
    anything_else?
end

start_app
