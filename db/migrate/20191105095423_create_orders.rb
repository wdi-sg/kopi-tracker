class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user
      t.references :kopi
      t.integer :weight

      t.timestamps
    end
  end
end
