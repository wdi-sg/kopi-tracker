class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.integer :priceperpound
      t.references :roastedness
      t.references :farm
      t.timestamps
    end
  end
end
