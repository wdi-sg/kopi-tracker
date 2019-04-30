class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.references :roastednesss
      t.references :origins
      t.integer :price_per_pound
    end
  end
end