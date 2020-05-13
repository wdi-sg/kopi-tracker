class AddCustomercountToKopis < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :customercount, :numeric
  end
end
