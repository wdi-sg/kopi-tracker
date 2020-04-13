class RemoveKopiIdFromOrders < ActiveRecord::Migration[5.2]
  def change
        remove_column :orders, :kopi_id
  end
end
