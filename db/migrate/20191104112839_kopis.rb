class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
  t.string :name
  t.text :roast
  t.timestamps
end
create_table :kopi_farm do |t|
t.string :farm_name
t.text :location
t.text :phone
t.timestamps
end
  end
end
