class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :kopi, foreign_key: true
      t.integer :weight

      t.timestamps
    end
  end
end
