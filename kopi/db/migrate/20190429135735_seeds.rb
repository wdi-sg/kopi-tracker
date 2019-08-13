class Seeds < ActiveRecord::Migration[5.2]
  def change
  	create_table :seeds do |t|
  	t.string :name
  	t.timestamps
end
  end
end
