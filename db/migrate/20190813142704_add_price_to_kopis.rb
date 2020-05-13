class AddPriceToKopis < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :price_per_pound, :decimal
    add_timestamps :kopis, null: true
  end
end