class Customer < ActiveRecord::Base
    has_many :orders
    has_many :cupcakes, through: :orders  

    def self.customer_info
        
        puts "\nWhat is the name for the order?"
        name = gets.chomp
        while name == ""
            puts "Please enter a valid name".colorize(:red)
            name = gets.chomp
        end
            
    
        puts "\nEnter your address".colorize(:light_magenta)
        address = gets.chomp
        
        while address == ""
            puts "Please enter a valid address".colorize(:red)
            address = gets.chomp
        end
        
        puts "\nEnter your phone number"
        puts "Using this format ##########".colorize(:light_blue)
        phone = gets.chomp
        
        while (phone.length != 10 || phone.to_i == 0)
            puts "Please enter a valid number. Using this format: ##########".colorize(:red)
            phone = gets.chomp
        end
            
        puts "\nEnter your email address".colorize(:light_magenta)
        email = gets.chomp
        while email == ""
            puts "Please enter a valid email address".colorize(:red)
            email = gets.chomp
        end

        Customer.create(name: name, address: address, phone_number: phone.to_i, email_address: email)
    end 
end






# def self.customer_info
#     ### Check if information already in the database
#     puts "What is the name of your order?"
#         name = gets.chomp
#     puts "What is your Address?"
#         address = gets.chomp
#     puts "What is your phone number?"
#         phone_number = gets.chomp
#     puts "What is your email address?"
#         email_address = gets.chomp
    
#     Customer.find_or_create_by(name: name, address: address, phone_number: phone_number, email_address: email_address)
# end
