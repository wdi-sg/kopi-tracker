class Kopi < ActiveRecord::Migration[5.2]
  def change
    create_table :kopi do |k|
    k.string :name
    k.text :roast
    k.references :origin
    k.timestamps
end
  end
end
