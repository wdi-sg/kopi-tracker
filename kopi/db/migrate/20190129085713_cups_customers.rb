class CupsCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :cups_customers do |t|
      t.references :cup
      t.references :customer
      t.timestamps
    end
  end
end