class ChangeTotalPriceTypeInOrders < ActiveRecord::Migration[5.2]
  def change
  	change_column :orders, :weight, 'float using weight::float'
  end
end
