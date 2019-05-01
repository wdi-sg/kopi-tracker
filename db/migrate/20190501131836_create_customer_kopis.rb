class CreateCustomerKopis < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_kopis do |t|
      t.references :customer
      t.references :kopi
      t.timestamps
    end
  end
end