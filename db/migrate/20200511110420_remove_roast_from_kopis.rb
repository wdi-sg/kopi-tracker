class RemoveRoastFromKopis < ActiveRecord::Migration[6.0]
  def change
    remove_column :kopis, :roast, :string
  end
end
