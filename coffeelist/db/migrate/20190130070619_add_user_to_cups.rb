class AddUserToCups < ActiveRecord::Migration[5.2]
  def change
    add_reference :cups, :user, foreign_key: true
  end
end
