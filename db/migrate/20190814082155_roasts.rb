class Roasts < ActiveRecord::Migration[5.2]
  def change
    create_table :roasts do |t|
        t.text :name
        t.timestamps
    end
  end
end