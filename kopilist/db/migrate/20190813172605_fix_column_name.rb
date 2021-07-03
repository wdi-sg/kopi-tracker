class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :roasts, :roastedness, :name
  end
end