class CreateKopis < ActiveRecord::Migration[6.0]
  def change
    create_table :kopis do |t|
      t.string :name
      t.integer :roastedness
      t.belongs_to :origin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
