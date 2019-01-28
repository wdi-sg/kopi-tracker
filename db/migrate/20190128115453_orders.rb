class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.weight :integer
      t.price :integer
    end
  end
end
