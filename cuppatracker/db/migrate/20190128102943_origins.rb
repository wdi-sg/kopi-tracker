class Origins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.string :phone
      t.text :location
      t.timestamps
    end
  end
end
