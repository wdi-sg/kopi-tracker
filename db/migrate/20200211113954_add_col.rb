class AddCol < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :weight, :integer
  end
end
