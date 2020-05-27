class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
  		t.text :weight
  		t.text :total_price
  		t.references :user
  		t.timestamps
    end

    create_table :kopis_orders do |t|
      t.references :kopi
      t.references :order
  		t.timestamps
	  end
  end
end
