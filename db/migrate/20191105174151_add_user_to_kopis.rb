class AddUserToKopis < ActiveRecord::Migration[5.2]
  def change
    add_reference :kopis, :user
  end
end
