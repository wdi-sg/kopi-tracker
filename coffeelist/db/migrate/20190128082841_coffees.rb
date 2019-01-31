class Coffees < ActiveRecord::Migration[5.2]
  def change
  create_table :coffees do |c|
  c.string :name
  c.text :roast
  c.timestamps
end
  end
end















