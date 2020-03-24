class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |o|
      o.integer :customer_id
    end
  end
end
