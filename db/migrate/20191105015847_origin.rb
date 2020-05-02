class Origin < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.string :location
      t.text :phone
      t.timestamps
    end
  end
end