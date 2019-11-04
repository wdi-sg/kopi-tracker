class Kopis < ActiveRecord::Migration[6.0]
  def change
    create_table :kopis do |t|
      t.string :name
      t.references :roast
      t.references :origin
      t.timestamps
  end
end
end