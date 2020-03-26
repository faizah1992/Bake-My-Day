require_relative './config/environment.rb'
require 'colorize'


def start_app
    prompt = TTY::Prompt.new()
    puts "Welcome to Bake my Day!".colorize(:light_magenta)
    user_choice = prompt.select("What would you like to do today?", [
        "Place an order",
        "Browse cupcakes",
        "Exit!"
    ])

    if user_choice == "Place an order"
        place_an_order
    end

    if user_choice == "Browse cupcakes"
        puts "\nHere are our Cupcake for sale!\n\n"
        browse_menu
    end
      
    if user_choice == "Exit!"
        puts "Good Bye, Thanks for visiting!"
    end

end

    start_app





























# #Based on whether Y/N
# #If yes then we would ask them their info for the order ~~~ Is when we initialize
# #
# #
# #If no we can let them browse the cupcakes for sale (lol window shopping)