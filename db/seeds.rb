Cupcake.destroy_all
Customer.destroy_all
Order.destroy_all

c1 = Cupcake.create(name:"Oh my Godiva", flavor:"Chocolate",price: 7,calories: 400)
c2 = Cupcake.create(name:"Ooey Gooey", flavor:"pbnj",price: 6.50,calories: 500)
c3 = Cupcake.create(name:"Strawberry", flavor:"Strawberry", price: 4,calories: 350)


cus1 = Customer.create(name: "Josh", address: "123 main strees", phone_number: 123456, email_address: "josh@gmail.com")
cus2 = Customer.create(name: "Steven", address: "342 briar street", phone_number: 123476, email_address: "steven@gmail.com")

o1 = Order.create(customer_id: cus1.id,cupcake_id: c1.id,deliverytime: "4 PM",total: 4)
o2 = Order.create(customer_id: cus2.id,cupcake_id: c3.id,deliverytime: "3 PM",total: 6)
o3 = Order.create(customer_id: cus1.id,cupcake_id: c2.id,deliverytime: "5 PM",total: 6)
