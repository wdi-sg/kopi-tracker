class Kopi < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
    t.string :name
    t.integer :roast
    t.references :kopifarm
    t.references :roast
    t.timestamps
    end
  end
end