class Price < ActiveRecord::Migration[6.0]
  def change
    add_column :kopis, :price, :integer
  end
end