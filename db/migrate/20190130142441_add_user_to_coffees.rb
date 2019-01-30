class AddUserToCoffees < ActiveRecord::Migration[5.2]
  def change
    add_reference :coffees, :user, foreign_key: true
  end
end
