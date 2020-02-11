class ChangeCol < ActiveRecord::Migration[5.2]
  def change
    rename_column :kopis, :weight, :price
  end
end
