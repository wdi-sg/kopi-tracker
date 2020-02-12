class AddAdminColToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_admin, :bool
  end
end
