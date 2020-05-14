class CreateKopisTable2 < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.references :roast
      t.references :kopi_farm
    end
  end
end
