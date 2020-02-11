class AddPricePerKgToKopi < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :price_per_kg, :decimal
  end
end
