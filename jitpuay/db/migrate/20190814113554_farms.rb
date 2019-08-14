class Farms < ActiveRecord::Migration[5.2]
  def change
    create_table :farms do |t|
      t.string :location
      t.string :phone_number
      t.timestamps
    end
  end
end
