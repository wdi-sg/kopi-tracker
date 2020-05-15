class RemoveCustomersColumnFromKopis < ActiveRecord::Migration[5.2]
  def change
    remove_column :kopis, :customers
  end
end