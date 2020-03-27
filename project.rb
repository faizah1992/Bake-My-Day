require_relative './config/environment.rb'


def start_app
    cupcake_picture
    prompt = TTY::Prompt.new() 
    puts "Welcome to"
    a = Artii::Base.new(:font => 'slant')
    puts a.asciify("Bake my Day!").colorize(:light_magenta) 
    
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
        puts "\nHere are our Cupcake for sale!\n\n".colorize(:light_blue)
        browse_menu
        user_choice = prompt.select("\n\nWould you like to place an order?", [
            "Yes",
            "No"
        ])

        if user_choice == "Yes"
            place_an_order
        elsif user_choice == "No"
            puts "Good Bye, Thanks for visiting!".colorize(:light_blue)
        end

    end
      
    if user_choice == "Exit!"
        puts "Good Bye, Thanks for visiting!".colorize(:light_blue)
    end

end

    start_app





