class Order < ActiveRecord::Base
    belongs_to :bakery
    belongs_to :customers
    has_many :cupcakes, through :bakery
end 