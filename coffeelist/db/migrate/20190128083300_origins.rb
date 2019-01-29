class Origins < ActiveRecord::Migration[5.2]
  def change
  create_table :origins do |o|
  o.integer :phone
  o.text :location
  o.timestamps
end  
end
end















