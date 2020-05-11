class Farms < ActiveRecord::Migration[5.2]
  def change
    create_table :farms do |t|
      t.string :origin
      t.string :location
      t.text :phone
      t.timestamps
    end
  end
end