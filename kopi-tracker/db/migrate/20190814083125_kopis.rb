class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
    t.string :name
    t.text :roast
    t.references :farms
    t.references :roasts
    t.timestamps
    end
  end
end