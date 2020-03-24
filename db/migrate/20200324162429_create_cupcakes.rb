class CreateCupcakes < ActiveRecord::Migration[5.2]
  def change
    create_table :cupcakes do |c|
      c.string :name
    end
  end
end
