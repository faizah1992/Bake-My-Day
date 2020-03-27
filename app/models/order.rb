class Order < ActiveRecord::Base
    belongs_to :cupcake 
    belongs_to :customer
    
    @@cart = []

    def self.get_delivery_time
        puts "\nWhat date would you like your order delivered at?\n"
        puts "Using this format MM/DD/YYYY".colorize(:light_blue)
        date = gets.chomp
        while date.length != 10
            puts "\nPlease enter a valid date. Using this format MM/DD/YYYY".colorize(:red)
            date = gets.chomp
        end

        puts "\nWhat time would you like your order delivered at?\n".colorize(:light_magenta)
        puts "Example Time: 09:00 PM or 04:00 AM ~~~ We deliver 24/7".colorize(:light_blue)
        time = gets.chomp

        while time.length != 8
            puts "\nPlease enter a valid Time. Using this format: HH:MM PM or HH:MM AM".colorize(:red)
            time = gets.chomp
        end

        "Your order will be delivered on #{date} at #{time}.".colorize(:green)
    end

    def self.fill_out_order(cupcake,customer,deliverytime,quantity)
        
        Order.create(customer_id: customer.id, cupcake_id: cupcake.id,deliverytime: deliverytime, quantity: quantity, total: (cupcake.price)*quantity)
    
    end

    def self.another_order(current_customer,deliverytime)
        prompt = TTY::Prompt.new()

        all_cupcakes = Cupcake.all.map do |c|
            c.name
        end
        selected_cupcake_name = prompt.select("Pick a Cupcake",all_cupcakes)
        selected_cupcake_object = Cupcake.all.find_by(name: selected_cupcake_name)
        puts "How many #{selected_cupcake_name}s would you like?"
        quantity = gets.chomp.to_i
        Order.fill_out_order(selected_cupcake_object,current_customer,deliverytime,quantity)
    end

    def self.cart
        @@cart
    end


    def self.receipt

        cust_id = self.cart[0].customer_id
        customer_name = Customer.where(id: cust_id)[0].name


        puts "\n\n\n\n===================="
        puts "Thank you #{customer_name}"
        puts "Your Order is:\n"
        grand_total = 0
        Order.cart.each do |order|

            quantity = order.quantity
            order_total = order.total
            grand_total += order_total
            cup_id = order.cupcake_id
            cup_name = Cupcake.where(id: cup_id)[0].name

            puts "#{cup_name} #{quantity}x"
            puts "$#{order_total}0"
            puts "--------------- \n"
        end

        puts "Grand Total is: $#{grand_total}0\n"
        if grand_total >= 1000 && grand_total < 1000000
            puts "WOW! THAT'S A BIG ORDER"
        elsif grand_total >= 1000000 && grand_total< 9000000000
            puts "I don't think we have enough supplies for this order, but we'll try..."
        elsif grand_total >= 90000000000
            puts "...you must want everyone in the world to have a cupcake."
        end
        
        puts cart[0].deliverytime
    end

     


 
 
   


end


   













