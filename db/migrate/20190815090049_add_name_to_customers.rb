class AddNameToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :name, :text
  end
end
