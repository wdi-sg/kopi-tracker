class CreateRoasts < ActiveRecord::Migration[5.2]
  def change
    create_table :roasts do |t|
      t.string :roast_type
      t.timestamps
    end
  end
end
