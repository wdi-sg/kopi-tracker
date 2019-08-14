class KopiFarm < ActiveRecord::Migration[5.2]
  def change
    create_table :kopifarms do |t|
    t.text :location
    t.text :phone
    t.timestamps
    end
  end
end