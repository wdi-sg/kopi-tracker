class Coffees < ActiveRecord::Migration[5.2]
  def change
    create_table :coffees do |t|
      t.string :name
      # t.string :roast
      t.integer :price
      t.references :origin
      t.references :roast
      t.timestamps
    end
  end
end
