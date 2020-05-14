class Priceperpound < ActiveRecord::Migration[6.0]
  def change
    add_column :kopis, :price_per_pound, :float
  end
end