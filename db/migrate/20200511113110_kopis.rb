class Kopis < ActiveRecord::Migration[6.0]
  def change
    create_table :kopis do |t|
      t.string :name
      t.string :roast
      t.string :origin

      t.timestamps
    end
  end
end