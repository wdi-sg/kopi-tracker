class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.references :roast, index:true
      t.references :origin, index:true
      t.decimal :price_per_pound
      t.timestamps
    end
  end
end