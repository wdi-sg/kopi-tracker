class Coffees < ActiveRecord::Migration[5.2]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :roast
      t.references :farm
      t.timestamps
    end
  end
end
