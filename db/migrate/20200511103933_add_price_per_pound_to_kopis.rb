class AddPricePerPoundToKopis < ActiveRecord::Migration[6.0]
  def change
    add_column :kopis, :price_per_pound, :decimal, precision: 10, scale: 2
  end
end