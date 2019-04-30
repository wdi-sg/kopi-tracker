class Articles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.kopi_name :kopi_name
      t.roast :roast
      t.roast :origin
      t.timestamps
    end
  end
end