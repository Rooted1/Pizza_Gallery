require_relative './config/environment.rb'
require_relative './lib/p_buy_view.rb'
require_relative './lib/p_readyforcheckout.rb'
require_relative './lib/p_finduser.rb'

$prompt = TTY::Prompt.new()
def start_app
    a = Artii::Base.new(:font => 'slant')
    puts a.asciify("Welcome to Pizza Gallery")

    puts "What is your name?"
    $name_input = gets.strip
    find_user
    buy_pizza_or_view_cart
end

start_app
