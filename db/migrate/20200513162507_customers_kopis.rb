class CustomersKopis < ActiveRecord::Migration[5.2]
  def change
    create_table :customers_kopis do |t|
      t.references :kopi
      t.references :customer
      t.timestamps
    end
  end
end