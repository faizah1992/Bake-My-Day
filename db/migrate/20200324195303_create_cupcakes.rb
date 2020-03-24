class CreateCupcakes < ActiveRecord::Migration[5.2]
  def change
    create_table :cupcakes do |c|
      c.string :name
      c.string :flavor
      c.float :price
      c.integer :calories
    end
  end
end
