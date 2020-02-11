class Kopis < ActiveRecord::Migration[5.2]
  def change
      create_table :kopis do |k|
          k.string :name
          k.text :roast
          k.references :origin
          k.references :roast
          k.timestamps
        end
  end
end