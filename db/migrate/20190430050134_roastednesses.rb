class Roastednesses < ActiveRecord::Migration[5.2]
  def change
    create_table :roastednesses do |t|
      t.string :name
    end
  end
end