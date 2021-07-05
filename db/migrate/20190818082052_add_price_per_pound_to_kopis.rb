class AddPricePerPoundToKopis < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :price_per_pound, :float

  end
end


