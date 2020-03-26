class Order < ActiveRecord::Base
    belongs_to :cupcake 
    belongs_to :customer
    
    @@cart = []

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

    def self.fill_out_order(cupcake,customer,quantity)
        Order.create(customer_id: customer.id, cupcake_id: cupcake.id,deliverytime: self.get_delivery_time, quantity: quantity, total: self.total(cupcake)*quantity)
    end

    def self.another_order(current_customer)
        prompt = TTY::Prompt.new()
        all_cupcakes = Cupcake.all.map do |c|
            c.name
        end
        selected_cupcake_name = prompt.select("Pick a Cupcake",all_cupcakes)
        selected_cupcake_object = Cupcake.all.find_by(name: selected_cupcake_name)
        puts "How many of #{selected_cupcake_name} do you want?"
        quantity = gets.chomp.to_i
        Order.fill_out_order(selected_cupcake_object,current_customer,quantity)
    end

    def self.cart
        @@cart
    end


    def self.receipt
        # Customer Name
        # Cupcake Name
        # Cupcake Price
        # Quantity
        # Grand Total
        # Thank Message
        cust_id = self.cart[0].customer_id
        customer_name = Customer.where(id: cust_id)[0].name


        puts "===================="
        puts "Thank you #{customer_name}"
        puts "Your Order is:"
        grand_total = 0
        Order.cart.each do |order|
            quantity = order.quantity
            order_total = order.total
            grand_total += order_total
            cup_id = order.cupcake_id
            cup_name = Cupcake.where(id: cup_id)[0].name

            puts "#{cup_name} #{quantity}x"
            puts "$#{order_total}"
            puts "--------------- \n"
        end

        puts "Grand Total is: #{grand_total}"











        # name_arr=[]
        # self.cart.each do |c|
        # find_id = c.cupcake_id
        # name_arr << find_name =Cupcake.all.find_by(id: find_id).name
       
        # end
        # name_arr[0]
        
      
        # quantity_arr=[]
        # self.cart.each do |c|
        #    quantity_arr << c.quantity   
        # end
        # quantity_arr[0]
        
     
        # total = 0 
        # self.cart.each do |c|
        #     total += c.total 
        # end
        # total
        # puts "Your order : #{name_arr} QTY: #{quantity_arr}"
        # puts "Total #{total}"
    end

     


 
 
   


end


   













