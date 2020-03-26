class Cupcake < ActiveRecord::Base
    has_many :orders
    has_many :customers, through: :orders

   
end

def browse_menu
    Cupcake.all.map do |cupcake|
        puts "#{cupcake.name}  :$#{cupcake.price}0"
    end
end




