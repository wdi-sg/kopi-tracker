class Orders < ActiveRecord::Migration[5.2]
  def change
  	create_table :orders do |t|
	  t.integer :weight
	  t.references :coffee
	  t.timestamps
	end
  end
end
