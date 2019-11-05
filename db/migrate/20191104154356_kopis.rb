class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
    t.string :name
    t.integer :roastedness
    t.references :origin
    t.timestamps
    end
  end
end