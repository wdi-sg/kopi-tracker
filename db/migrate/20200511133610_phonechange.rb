class Phonechange < ActiveRecord::Migration[6.0]
  def change
    change_column :origins, :phone, :string
  end
end