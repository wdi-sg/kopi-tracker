class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :kopi_id
      t.decimal :weight
    end
  end
end
