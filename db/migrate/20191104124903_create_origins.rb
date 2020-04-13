class CreateOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :origins do |t|
      t.string :location
      t.integer :phone
      t.timestamps
    end
  end

  def
    change_table :origins do |t|
      t.remove :park_id
    end
  end
end