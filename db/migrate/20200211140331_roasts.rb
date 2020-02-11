class Roasts < ActiveRecord::Migration[5.2]
  def change
    create_table :roasts do |r|
    r.string :name
end
  end
end