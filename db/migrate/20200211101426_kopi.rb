class Kopi < ActiveRecord::Migration[5.2]
  def change
  	create_table :kopis do |t|
  		t.string :name
  		t.string :roast
  		t.references :origin
  	end
  end
end
