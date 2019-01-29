class Cuppas < ActiveRecord::Migration[5.2]
  def change
    create_table :cuppas do |t|
      t.string :name
      t.references :roast
      t.references :origin
      t.timestamps
    end
  end
end
