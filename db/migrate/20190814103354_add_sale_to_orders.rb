class AddSaleToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :sale, :decimal
  end
end