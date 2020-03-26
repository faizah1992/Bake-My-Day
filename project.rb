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
       all_cupcakes = Cupcake.all.map do |c|
            c.name #=> string
        end
        selected_cupcake_name = prompt.select("Pick a Cupcake",all_cupcakes)
        selected_cupcake_object = Cupcake.all.find_by(name: selected_cupcake_name)
        puts "How many of #{selected_cupcake_name} do you want?"
        quantity = gets.chomp.to_i
        current_customer = Customer.customer_info
        deliverytime = Order.get_delivery_time
        Order.cart << Order.fill_out_order(selected_cupcake_object,current_customer,deliverytime,quantity)
        user_choice = prompt.select("Would you like to place another order?",[
        "Yes",
        "No"
    ])
        if user_choice == "Yes"
            Order.cart << Order.another_order(current_customer)
            #prompt here to ask again
            Order.receipt
        end

        if user_choice == "No"
            Order.receipt
            puts "Thanks for coming! Goodbye"
        end

            
    end

    if user_choice == "Browse cupcakes"
        show_cupcakes = Cupcake.all.map do |c|
            c.name 
        end
        puts show_cupcakes

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