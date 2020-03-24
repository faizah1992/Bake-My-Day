class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |o|
      o.integer :customer_id
      o.integer :cupcake_id
      o.datetime :deliverytime
      o.float :total 
      o.string :name
    end
  end
end
