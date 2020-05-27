class AddNameToOrigins < ActiveRecord::Migration[5.2]
  def change
  	add_column :origins, :name, :text
  end
end
