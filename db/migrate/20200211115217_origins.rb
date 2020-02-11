class Origins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |o|
      o.string :location
      o.text :phone
      o.timestamps
      end
  end
end