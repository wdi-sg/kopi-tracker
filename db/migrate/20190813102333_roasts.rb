class Roast < ActiveRecord::Migration[5.2]

  def change

      create_table :roasts do |t|
      t.string :roast_name
      t.string :level
      t.references :kopi_name
      t.timestamps
    end
  end
end