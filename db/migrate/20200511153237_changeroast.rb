class Changeroast < ActiveRecord::Migration[6.0]
  def change
    rename_column :kopis, :roast, :roast_id
    create_table :roast do |t|
      t.string :name
      t.integer :level
      t.timestamps
    end
  end
end
