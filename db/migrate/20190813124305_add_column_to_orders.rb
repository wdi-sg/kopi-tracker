class AddColumnToOrders < ActiveRecord::Migration[5.2]
  def change
        add_reference :orders, :kopi, index: true
  end
end
