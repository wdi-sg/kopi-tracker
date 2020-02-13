class Orders < ActiveRecord::Migration[5.2]
  def change
          create_table :orders do |k|
          k.integer :weight
          k.references :kopi
          k.timestamps
        end
  end
end