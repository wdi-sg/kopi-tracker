class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
        t.string :name
        t.string :roast
        t.text :img_url
        t.references :origin
        t.timestamps
    end
  end
end
