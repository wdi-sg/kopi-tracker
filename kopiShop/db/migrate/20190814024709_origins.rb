class Origins < ActiveRecord::Migration[5.2]
create_table :origins do |t|
  t.string :location
  t.string :phone
end
end