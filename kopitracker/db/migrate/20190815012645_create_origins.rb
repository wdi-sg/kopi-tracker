class CreateOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|

      t.timestamps
    end
  end
end
