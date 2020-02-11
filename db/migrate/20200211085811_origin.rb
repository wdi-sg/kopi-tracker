class Origin < ActiveRecord::Migration[5.2]
  def change
    create_table :origin do |t|
      t.text :location
      t.text :phone_number
      t.timestamps
    end
  end
end
