class ChangeRoastToBeIntegerInKopis < ActiveRecord::Migration[5.2]
  def change
    change_column :kopis, :roast, 'integer USING CAST(roast AS integer)'
  end
end
