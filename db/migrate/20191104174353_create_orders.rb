class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :weight
      t.references :kopi
      t.timestamps
    end
  end
end