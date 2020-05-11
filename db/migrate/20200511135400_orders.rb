class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.integer :weight
      t.references :kopi
      t.timestamps
    end
  end
end