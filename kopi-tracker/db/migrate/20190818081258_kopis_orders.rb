class KopisOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis_orders do |t|
      t.references :order
      t.references :kopi
      t.timestamps
    end
  end
end