# And Organization of all the non-specific methods 
# so we can call each one when needed

def place_an_order

    prompt = TTY::Prompt.new()

    all_cupcakes = Cupcake.all.map do |c|
        c.name #=> string
    end

    puts "Here is Our Menu: \n "
    browse_menu
    puts "\n"
    selected_cupcake_name = prompt.select("Which cupcake would you like to purchase",all_cupcakes)
    selected_cupcake_object = Cupcake.all.find_by(name: selected_cupcake_name)
    puts "\nHow many #{selected_cupcake_name}s would you like?"
    quantity = gets.chomp.to_i

    puts "\nNow we need your delivery information"
    
    current_customer = Customer.customer_info
    deliverytime = Order.get_delivery_time
    Order.cart << Order.fill_out_order(selected_cupcake_object,current_customer,deliverytime,quantity)

    order_again?(current_customer,deliverytime)
end


def order_again?(current_customer,deliverytime)
    prompt = TTY::Prompt.new()

        user_choice = prompt.select("Would you like to place another order?",[
        "Yes",
        "No"
    ])
        if user_choice == "Yes"
            Order.cart << Order.another_order(current_customer,deliverytime)
            order_again?(current_customer,deliverytime)
        end

        if user_choice == "No"
            Order.receipt
            puts "\nThanks for placing an order!\nHave a good day!"
        end

            
end