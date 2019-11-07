class RemoveRoastFromKopis < ActiveRecord::Migration[5.2]
  def change
    remove_column :kopis, :roast, :text
  end
end
