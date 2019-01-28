class Origns < ActiveRecord::Migration[5.2]
  def change
    create_table :origns do |t|
      t.text :location
      t.integer :phone
      t.timestamps
    end
  end
end