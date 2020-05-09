class ChangePricePerPoundToBeDecimalInKopis < ActiveRecord::Migration[5.2]
  def change
    change_column :kopis, :pricePerPound, :decimal
  end
end