class Customer < ActiveRecord::Base
    has_many :orders
    has_many :cupcakes, through::orders 
end