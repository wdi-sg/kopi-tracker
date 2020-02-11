class Origin < ActiveRecord::Migration[5.2]
  def change
        create_table :origin do |t|
    t.string :location
    t.string :phone
    t.timestamps
end
  end
end