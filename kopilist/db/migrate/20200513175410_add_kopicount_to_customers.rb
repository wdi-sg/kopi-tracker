class AddKopicountToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :kopicount, :numeric
  end
end
