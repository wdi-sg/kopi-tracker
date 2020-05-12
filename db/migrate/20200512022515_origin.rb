class Origin < ActiveRecord::Migration[5.2]
  def change
   	create_table :origin do |t|
  	t.string :location
  	t.string :phone_number
  	t.references :kopi
  end
  end
end
