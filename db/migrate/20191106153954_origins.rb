class Origins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.text :location
      t.text :phone
    end
  end
end
