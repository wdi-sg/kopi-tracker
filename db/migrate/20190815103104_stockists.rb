class Stockists < ActiveRecord::Migration[5.2]
  def change
    create_table :stockists do |t|
      t.string :name
      t.timestamps
    end
  end
end