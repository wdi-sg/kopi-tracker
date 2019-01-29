class CoffeesCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :coffees_customers do |t|
      t.references :coffee
      t.references :customer
      t.timestamps
    end
  end
end