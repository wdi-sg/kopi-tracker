class KopisCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis_customers do |t|
      t.references :kopi
      t.references :customer
      t.timestamps
    end
  end
end