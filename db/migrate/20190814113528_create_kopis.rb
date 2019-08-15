class CreateKopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.references :user, index: true
      t.references :roast, index: true
      t.references :origin, index: true
      t.decimal :price_per_pound, :precision =>4,:scale => 2

      t.timestamps
    end
  end
end