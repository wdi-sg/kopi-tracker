class RemoveKopiIDfromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :kopi_id
  end
end