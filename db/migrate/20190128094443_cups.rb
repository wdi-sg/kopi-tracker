class Cups < ActiveRecord::Migration[5.2]
  def change
    create_table :cups do |t|
    t.string :name
    t.string :roast
    t.references :origin
    t.timestamps
end
  end
end
