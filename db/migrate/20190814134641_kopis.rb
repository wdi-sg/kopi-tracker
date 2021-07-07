class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.text :name
      t.references :roast
      t.references :origin
      t.decimal :price_per_pound
      t.timestamps
    end
  end
end
