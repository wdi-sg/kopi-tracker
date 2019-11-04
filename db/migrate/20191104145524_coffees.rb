class Coffees < ActiveRecord::Migration[5.2]
  def change
    create_table :coffees do |t|
      t.string :name
      t.text :roastedness
      t.text :origin
    end
  end
end
