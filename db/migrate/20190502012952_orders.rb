class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :weight
      t.references :kopi
      t.timestamps
    end
  end
end