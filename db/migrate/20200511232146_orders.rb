class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :kopi
      t.decimal :weight
    end
  end
end
