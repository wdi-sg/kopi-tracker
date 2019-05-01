class AddShopCountToKopis < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :shop_count, :integer
  end
end