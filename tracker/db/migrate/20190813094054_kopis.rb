class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.references :origin
      t.references :roast
      t.timestamps
    end
  end
end