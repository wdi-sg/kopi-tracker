class RenameOrdersColumn < ActiveRecord::Migration[5.2]
  def change
        rename_column :orders, :kopis_id, :kopi_id
  end
end
