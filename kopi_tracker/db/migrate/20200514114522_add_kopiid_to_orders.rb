class AddKopiidToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :kopi_id, :integer
  end
end
