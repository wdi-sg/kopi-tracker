class AddPoundPriceToKopis < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :pound_price, :float
  end
end
