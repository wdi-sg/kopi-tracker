class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :roasts, :type, :name
  end
end