class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    t.references :kopi
    t.references :customer
    t.timestamps
    end
  end
end
