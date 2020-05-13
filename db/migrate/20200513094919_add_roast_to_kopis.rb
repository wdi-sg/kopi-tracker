class AddRoastToKopis < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :roast_id, :string
    add_index :kopis, :roast_id
  end
end
