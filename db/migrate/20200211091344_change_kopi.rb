class ChangeKopi < ActiveRecord::Migration[5.2]
  def change
    rename_table :kopi, :kopis
    rename_table :origin, :origins
  end
end
