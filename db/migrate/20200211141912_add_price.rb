class AddPrice < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :price, :money
  end
end