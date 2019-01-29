class KoffeesCustomers < ActiveRecord::Migration[5.2]
  def change
  	create_table :koffees_customers do |t|
	  t.references :koffee
	  t.references :customer
	  t.timestamps
	end
  end
end
