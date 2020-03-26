class Customer < ActiveRecord::Base
    has_many :orders
    has_many :cupcakes, through: :orders  

    def self.customer_info
        puts "\nWhat is the name for the order?\n"
        name = gets.chomp
        puts "\nEnter your address\n"
        address = gets.chomp
        puts "\nEnter your phone number"
        puts "Using this format ########## :"
        phone = gets.chomp
        puts "\nEnter your email address\n"
        email = gets.chomp

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
