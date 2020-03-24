class Cupcake < ActiveRecord::Base
    has_many :orders
    has_many :customers, though::orders
end
