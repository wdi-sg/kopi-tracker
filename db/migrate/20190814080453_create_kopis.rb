class CreateKopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.integer :pricePerPound
      t.references :farm
      t.references :roast
      t.timestamps
    end
  end
end