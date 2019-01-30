class AddUserToKoopis < ActiveRecord::Migration[5.2]
  def change
    add_reference :koopis, :user, foreign_key: true
  end
end
