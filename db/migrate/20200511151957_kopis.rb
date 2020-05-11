class Kopis < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.integer :roast_id
      t.integer :origin_id
    end
  end
end

