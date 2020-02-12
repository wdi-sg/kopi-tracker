class Order < ActiveRecord::Migration[5.2]
  def change
        create_table :orders do |o|
          o.integer :weight
          o.references :kopi
          o.timestamps
        end
  end
end