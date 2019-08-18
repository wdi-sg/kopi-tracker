class Origins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.string :name
      t.text :location
      t.string :phone
      t.timestamps
    end
  end
end
