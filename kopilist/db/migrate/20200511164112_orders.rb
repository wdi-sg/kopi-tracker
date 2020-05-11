class Orders < ActiveRecord::Migration[5.2]
  def change

    create_table :orders do |t|
  t.numeric :pound
  t.references :kopi
  t.timestamps
end
  end
end