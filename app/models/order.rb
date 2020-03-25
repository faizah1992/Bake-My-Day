class Order < ActiveRecord::Base
    belongs_to :cupcake 
    belongs_to :customer

    def self.get_delivery_time
        puts "What date would you like your order delivered at?"
        date = gets.chomp
        puts "What time would you like your order delivered at?"
        time = gets.chomp

        "Your order will be delivered on #{date} at #{time}."
    end

    def self.total(cupcake)
        cupcake.price
    end

    def self.fill_out_order(cupcake,customer)
        Order.create(customer_id: customer.id, cupcake_id: cupcake.id,deliverytime: self.get_delivery_time, total: self.total(cupcake))
    end
    


 
 
   


end


   













