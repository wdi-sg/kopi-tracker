class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :coffee
      t.text :roast
      t.integer :farm_id
    end
  end
end
