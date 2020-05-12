class KopisOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis_orders do |t|
      t.references :kopi
      t.references :order
      t.timestamps
    end
  end
end