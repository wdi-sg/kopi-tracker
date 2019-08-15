class CreateKopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.text :roastedness
      t.references :farm, foreign_key: true

      t.timestamps
    end
  end
end
