class Roast < ActiveRecord::Migration[5.2]
  def change
  	create_table :roast do |t|
  	t.string :name
  	t.references :kopi
  end
  end
end
