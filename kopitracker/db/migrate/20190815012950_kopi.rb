class Kopi < ActiveRecord::Migration[5.2]
  def change
    create_table :origin do |t|
  t.string :name
  t.references :kopi
  t.timestamps
end
  end
end
