class Kopis < ActiveRecord::Migration[5.2]

create_table :kopis do |t|
  t.string :name
  t.string :roast
  t.string :origin
end
end