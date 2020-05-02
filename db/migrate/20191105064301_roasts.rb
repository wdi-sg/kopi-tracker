class Roasts < ActiveRecord::Migration[5.2]
  def change
    create_table :roasts do |t|
      t.string :name
    end
    add_reference :kopis, :roast, foreign_key: true
  end
end