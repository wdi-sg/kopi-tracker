class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :kopi
      t.integer :weight
      t.integer :price
      t.timestamps
    end
  end
end
