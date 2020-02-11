class Origins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |o|
    o.string :location
    o.text :phone
end
  end
end