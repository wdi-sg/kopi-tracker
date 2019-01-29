class Koopis < ActiveRecord::Migration[5.2]
  def change

    create_table :koopis do |t|
      t.string :name
      t.references :origin
      t.references :roast
      t.references :order
      t.float :price
      t.timestamps
    end

  end
end
