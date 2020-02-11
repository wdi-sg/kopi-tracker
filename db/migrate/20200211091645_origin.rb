class Origin < ActiveRecord::Migration[5.2]
  def change
    create_table :origin do |o|
    o.string :location
    o.text :phone
end
  end
end
