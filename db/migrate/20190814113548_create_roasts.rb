class CreateRoasts < ActiveRecord::Migration[5.2]
  def change
    create_table :roasts do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end