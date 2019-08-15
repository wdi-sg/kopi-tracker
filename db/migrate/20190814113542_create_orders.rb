class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :weight, :precision => 4, :scale => 2
      t.references :kopi, index: true

      t.timestamps
    end
  end
end