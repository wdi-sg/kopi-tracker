class CustomersKopis < ActiveRecord::Migration[5.2]
  def change
    create_table :customers_kopis do |t|
      t.references :customer
      t.references :kopi
      t.text :quantity
      t.timestamps
    end
  end
end
