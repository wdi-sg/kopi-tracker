class Compares < ActiveRecord::Migration[5.2]
  def change
    create_table :compares do |t|
    t.string :roast
    t.references :cup
    t.timestamps
end
  end
end
