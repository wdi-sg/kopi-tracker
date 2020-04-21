class Coffee < ActiveRecord::Migration[5.2]
  def change

    create_table :charts do |t|
      t.string :kopi_name
      t.references :roast
      t.references :origin
      t.timestamps
    end
  end
end