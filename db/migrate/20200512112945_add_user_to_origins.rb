class AddUserToOrigins < ActiveRecord::Migration[5.2]
  def change
    add_reference :origins, :user, foreign_key: true
  end
end
