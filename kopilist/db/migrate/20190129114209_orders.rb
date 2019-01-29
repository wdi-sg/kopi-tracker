class Orders < ActiveRecord::Migration[5.2]
  def change

    create_table :orders do |t|
      t.references :koopi
      t.float :weight
      t.timestamps
    end

  end
end