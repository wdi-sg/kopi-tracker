class Origins < ActiveRecord::Migration[6.0]
  def change
      create_table :origins do |t|
      t.string :location
      t.string :phone

      t.timestamps
  end
end
end