class Farms < ActiveRecord::Migration[5.2]
  def change
    create_table :farms do |t|
      t.string :location
      t.numeric :phone
      t.timestamps
    end

  end
end