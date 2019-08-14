class AddUserToKopis < ActiveRecord::Migration[5.2]
  def change
    add_reference :kopis, :user, foreign_key: true
    add_column :users, :admin, :boolean, default: false
  end
end