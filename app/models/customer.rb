class Customer < ActiveRecord::Base
    has_many :orders
    has_many :cupcakes, through: :orders 

    def self.customer_info
        ### Check if information already in the database
        puts "What is the name of your order?"
            name = gets.chomp
        puts "What is your Address?"
            address = gets.chomp
        puts "What is your phone number?"
            phone_number = gets.chomp
        puts "What is your email address?"
            email_address = gets.chomp
        
        Customer.find_or_create_by(name: name, address: address, phone_number: phone_number, email_address: email_address)
    end

end