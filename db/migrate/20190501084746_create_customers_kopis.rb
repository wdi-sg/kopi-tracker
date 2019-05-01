class CreateCustomersKopis < ActiveRecord::Migration[5.2]
  def change
    create_table :customers_kopis do |t|
      t.references :customer, foreign_key: true
      t.references :kopi, foreign_key: true

      t.timestamps
    end
  end
end
