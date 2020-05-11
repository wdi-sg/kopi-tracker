class CreateKopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.belongs_to :roast, foreign_key: true
      t.belongs_to :origin, foreign_key: true

      t.timestamps
    end
  end
end
