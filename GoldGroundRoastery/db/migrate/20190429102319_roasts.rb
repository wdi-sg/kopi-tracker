class Roasts < ActiveRecord::Migration[5.2]
  def change
    create_table :roasts do |t|
      t.string :roast
    end
  end
end