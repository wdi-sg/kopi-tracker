class CreateOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.text :location
      t.integer :phone

      t.timestamps
    end
  end
end
