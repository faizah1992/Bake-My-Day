class Bakery < ActiveRecord::Base
    has_many(:orders)
    has_many (:cupcakes)
end