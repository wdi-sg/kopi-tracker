class Farms < ActiveRecord::Migration[5.2]
  def change
    create_table :farms do |t|
      t.string :name
      t.references :coffee
      t.timestamps
    end
  end
end
