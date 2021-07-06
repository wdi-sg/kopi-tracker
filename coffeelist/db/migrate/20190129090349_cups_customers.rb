class CupsCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :cups_customers do |t|
      t.references :customer
      t.references :cup
      t.timestamps
    end
  end
end