class AddUserToKopi < ActiveRecord::Migration[5.2]
  def change
    add_reference :kopi, :user, foreign_key: true
  end
end
