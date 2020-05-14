class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :weight, null: false, precision: 15, scale: 2
      t.references :kopi, null: false, foreign_key: true

      t.timestamps
    end
  end
end