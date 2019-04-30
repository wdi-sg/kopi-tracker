class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.references :roastedness
      t.references :origin
      t.integer :price_per_pound
    end
  end
end