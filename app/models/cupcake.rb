class Cupcake < ActiveRecord::Base
    has_many :orders
    has_many :customers, through: :orders

    def self.print
        Cupcake.all.each do |cupcake|
            puts "======================="
            puts "Name: #{cupcake.name}"
            puts "Flavor: #{cupcake.flavor}"
            puts "Price: #{cupcake.price}"
            puts "Calories #{cupcake.calories}"
            puts "======================="
        end
    end
end


