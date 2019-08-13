class AddPricePerPoundToKopis < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :price_per_pound, :decimal, :precision =>4,:scale => 2
  end
end
