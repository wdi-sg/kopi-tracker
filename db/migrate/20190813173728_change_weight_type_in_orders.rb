class ChangeWeightTypeInOrders < ActiveRecord::Migration[5.2]
  def change
  	change_column :orders, :total_price, 'float using total_price::float'
  end
end
