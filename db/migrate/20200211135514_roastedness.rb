class Roastedness < ActiveRecord::Migration[5.2]
  def change
     create_table :roast do |t|
      t.string :name
    end
  end
end
