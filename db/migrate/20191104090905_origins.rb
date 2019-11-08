class Origins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.text :location
      t.string :phone_number
      t.timestamps
    end
  end
end