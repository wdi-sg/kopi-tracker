class AddPoundPriceColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :pound_price, :string  
  end
end
