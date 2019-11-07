class DropKopisUsers < ActiveRecord::Migration[5.2]
  def up
    drop_table :kopis_users

  end
end