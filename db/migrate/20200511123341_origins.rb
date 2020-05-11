class Origins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.string :location
      t.integer :phone_no
      t.timestamps
    end
  end
end