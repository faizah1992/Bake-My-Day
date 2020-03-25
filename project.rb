require_relative './config/environment.rb'


def start_app
    puts "Hi, Welcome to Bake My Day!"

    prompt = TTY::Prompt.new()

    user_choice = prompt.select("What would you like to do today?", [
        "Place an Order",
        "Browse Cupcakes",
        "Exit"
    ])


    if user_choice == "Place an Order"
        ###Limit in case more cupcakes get created
        Cupcake.print
        user_choice = prompt.select("Choose a cupcake", 
            Cupcake.all.map{|cupcake| cupcake.name}
        )

        a = Cupcake.all.select{|cupcake| cupcake.name == user_choice}
        binding.pry
        customer = Customer.customer_info


        # puts "How many cupcakes would you like?"
        #     quanity = gets.chomp
    
    elsif user_choice == "Browse Cupcakes"
        Cupcake.print
    end


    ### Turn into a method later
    ### Learn how to empty out a database
    ### Check









    #Based on whether Y/N
    #If yes then we would ask them their info for the order ~~~ Is when we initialize
    #
    #
    #If no we can let them browse the cupcakes for sale (lol window shopping)
end

start_app