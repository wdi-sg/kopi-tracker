class Origin < ActiveRecord::Migration[5.2]
  def change
    create_table :origin do |t|
  t.string :location
  t.integer :phone_number
  t.references :kopi
  t.timestamps
end
  end
end