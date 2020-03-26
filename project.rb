require_relative './config/environment.rb'



def start_app
    cupcake_picture
    prompt = TTY::Prompt.new() 
    puts "Welcome to"
    a = Artii::Base.new(:font => 'slant')
    puts a.asciify("Bake my Day!").colorize(:light_magenta) 
    
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





