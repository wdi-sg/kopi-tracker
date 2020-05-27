class ChangeRoastednessToRoastednesses < ActiveRecord::Migration[5.2]
  def change
  	rename_table :roastedness, :roastednesses
  end
end
