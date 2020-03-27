require 'colorize'
Cupcake.destroy_all
Customer.destroy_all
Order.destroy_all

c1 = Cupcake.create(name:"Oh my Godiva".colorize(:light_magenta), flavor:"Chocolate",price: 7,calories: 400)
c2 = Cupcake.create(name:"Ooey Gooey".colorize(:cyan), flavor:"PBnJ",price: 6.50,calories: 500)
c3 = Cupcake.create(name:"Strawberry Shortcake".colorize(:light_magenta), flavor:"Strawberry", price: 4,calories: 350)
c4 = Cupcake.create(name:"Oh how traditional".colorize(:cyan), flavor: "Vanilla", price: 3.5, calories: 250)
c5 = Cupcake.create(name:"Best of both worlds".colorize(:light_magenta), flavor: "Marble", price: 8, calories: 450)
c6 = Cupcake.create(name:"I can't believe it's not a cupcake".colorize(:cyan), flavor: "It's a muffin", price: 3, calories: 450)



cus1 = Customer.create(name: "Josh", address: "123 main strees", phone_number: 123456, email_address: "josh@gmail.com")
cus2 = Customer.create(name: "Steven", address: "342 briar street", phone_number: 123476, email_address: "steven@gmail.com")

o1 = Order.create(customer_id: cus1.id,cupcake_id: c1.id,deliverytime: "4 PM",total: 4)
o2 = Order.create(customer_id: cus2.id,cupcake_id: c3.id,deliverytime: "3 PM",total: 6)
o3 = Order.create(customer_id: cus1.id,cupcake_id: c2.id,deliverytime: "5 PM",total: 6)

