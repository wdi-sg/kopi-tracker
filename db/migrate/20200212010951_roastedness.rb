class Roastedness < ActiveRecord::Migration[5.2]
  def change
    create_table :roastedness do |t|
      t.string :name
      
  end
  end
end
