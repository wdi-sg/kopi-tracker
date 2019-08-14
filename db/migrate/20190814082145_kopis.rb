class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
        t.text :name
        t.text :roast
        t.references :origin
        t.timestamps
    end
  end
end