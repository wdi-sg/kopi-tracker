class CreateRoasts < ActiveRecord::Migration[5.2]
  def change
    create_table :roasts do |t|
      t.integer :level
      t.string :name

      t.timestamps
    end
  end
end
