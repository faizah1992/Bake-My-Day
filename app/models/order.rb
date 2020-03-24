class Order < ActiveRecord::Base
    belongs_to :cupcake 
    belongs_to :customer
end
