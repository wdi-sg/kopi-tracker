class CreateOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :origins do |t|
      t.string :location, null: false
      t.string :phone

      t.timestamps
    end
  end
end