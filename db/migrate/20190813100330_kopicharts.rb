class Kopichart < ActiveRecord::Migration[5.2]

  def change

    create_table :kopicharts do |t|
      t.string :kopi_name
      t.references :roast_name
      t.references :origin_name
      t.string :price_pergram
      t.timestamps
    end
  end
end