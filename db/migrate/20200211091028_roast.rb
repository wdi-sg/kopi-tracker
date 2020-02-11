class Roast < ActiveRecord::Migration[5.2]
  def change
    remove_column :kopi, :roast

    create_table :roast do |t|
      t.timestamps
      t.string :name
    end

    add_reference :kopi, :roast, index: true
  end
end
