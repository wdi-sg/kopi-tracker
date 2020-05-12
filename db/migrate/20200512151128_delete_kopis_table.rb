class DeleteKopisTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :kopis
  end
end
