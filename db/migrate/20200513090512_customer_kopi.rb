class CustomerKopi < ActiveRecord::Migration[5.2]
  def change
    create_table :customers_kopis do |t|
      t.references :customer
      t.references :kopi
    end
  end
end
