class CreateBakery < ActiveRecord::Migration[5.2]
  def change
    create_table :bakeries do |b|
      b.string :name
    end
      
  end
end
