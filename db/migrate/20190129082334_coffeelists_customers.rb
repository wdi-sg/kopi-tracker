class CoffeelistsCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :coffeelists_customers do |t|
      t.references :coffeelist
      t.references :customer
      t.timestamps
    end
  end
end
