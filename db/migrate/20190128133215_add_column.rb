class AddColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :coffees, :price, :integer
  end
end
