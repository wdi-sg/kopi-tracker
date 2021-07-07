class CreateFarms < ActiveRecord::Migration[5.2]
  def change
    create_table :farms do |t|
      t.text :location
      t.text :phoneNumber

      t.timestamps
    end
  end
end
