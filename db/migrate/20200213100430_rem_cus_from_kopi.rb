class RemCusFromKopi < ActiveRecord::Migration[5.2]
  def change
    remove_column :kopis, :customer_id
  end
end
