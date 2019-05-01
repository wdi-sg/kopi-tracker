class AddKopiNumToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :kopi_count, :integer
    add_index  :customers, :kopi_count
  end
end