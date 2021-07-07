class AlterTable < ActiveRecord::Migration[6.0]
  def change
    change_table :origins do |t|
      t.remove :park_id
    end
  end
end