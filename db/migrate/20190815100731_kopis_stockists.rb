class KopisStockists < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis_stockists do |t|
      t.references :kopi
      t.references :stockist
      t.timestamps
    end
  end
end