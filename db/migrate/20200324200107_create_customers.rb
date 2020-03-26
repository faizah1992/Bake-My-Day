class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |c|
      c.string :name 
      c.string :address
      c.integer :phone_number
      c.string :email_address
      
    end
  end
end
