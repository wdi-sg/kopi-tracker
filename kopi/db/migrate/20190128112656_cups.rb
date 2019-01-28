class Cups < ActiveRecord::Migration[5.2]
  def change
    create_table :cups do |t|
      t.string :roastedness
      t.references :farm
      t.timestamps
    end
  end
end