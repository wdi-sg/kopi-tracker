class Stocks < ActiveRecord::Migration[5.2]
  def change
      create_table :stocks do |t|
          t.references :customer
          t.references :kopi
          t.integer :quantity
          t.timestamps
      end
  end
end
