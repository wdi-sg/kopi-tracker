class Order < ActiveRecord::Migration[5.2]
  def change
  	create_table :orders do |t|
  		t.text :weight
  		t.text :total_price
  		t.references :kopi
  		t.timestamps
	end
  end
end
