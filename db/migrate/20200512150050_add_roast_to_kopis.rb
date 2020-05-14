class AddRoastToKopis < ActiveRecord::Migration[5.2]
  def change
    remove_column :kopis, :roastedness, :integer
    add_reference :kopis, :roast, foreign_key: true
  end
end
