class AddKopiPriceToKopi < ActiveRecord::Migration[5.2]
  def change
  	add_column :kopis, :price_per_pound, :decimal, :precision => 15, :scale => 10
  end
end
