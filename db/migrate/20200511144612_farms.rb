class Farms < ActiveRecord::Migration[5.2]
  def change
    create_table :farms do |t|
      t.string :name
      t.text :location
      t.integer :phone
      t.timestamps
    end
  end
end
