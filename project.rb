require_relative './config/environment.rb'



puts "Hi, Welcome to Bake My Day!"

prompt = TTY::Prompt.new()

user_choice = prompt.select("What would you like to do today?", [
    "Place an Order",
    "Browse Cupcakes",
    "Exit"
])

Cupcake.destroy_all

Cupcake.create(name: "Oh My Godiva", flavor: "Chocolate", price: 8, calories: 550)
Cupcake.create(name: "Ooey Gooey", flavor: "PBnJ", price: 3.50, calories: 420)
Cupcake.create(name: "I can't believe it's not a cupcake", flavor: "Nothing", price: 0, calories: 0)
Cupcake.create(name: "Strawberry Shortcake", flavor: "Strawberry Cheesecake", price: 6.50, calories: 400)
Cupcake.create(name: "How Orignal...", flavor: "Vanilla", price: 4.00, calories: 360)
Cupcake.create(name: "Best of Both Worlds", flavor: "Marble", price: 5.50, calories: 450)

### Put into a proper print function or whatever


if user_choice == "Place an Order"
    Cupcake.print
    user_choice = prompt.select("Choose 1 cupcake", 
        Cupcake.all.map{|cupcake| cupcake.name}
    )
    Cupcake.all.select{|cupcake| cupcake.name == user_choice}
    
    puts "How many cupcakes would you like?"
        quanity = gets.chomp
 
elsif user_choice == "Browse Cupcakes"
    Cupcake.print
end


### Turn into a method later
### Learn how to empty out a database
### Check




         #Please no deleto
#-----------------------------------------#
# if user_choice == "Place an Order"
#     puts "What is the name of your order?"
#         name = gets.chomp
#     puts "What is your Address?"
#         address = gets.chomp
#     puts "What is your phone number?"
#         phone_number = gets.chomp
#     puts "What is your email address?"
#         email_address = gets.chomp
    
#     Customer.create(name: name,address: address,phone_number: phone_number,email_address: email_address)
#     Customer.delete(name = "")
#     binding.pry
# else
#     nil
# end





#Based on whether Y/N
#If yes then we would ask them their info for the order ~~~ Is when we initialize
#
#
#If no we can let them browse the cupcakes for sale (lol window shopping)
