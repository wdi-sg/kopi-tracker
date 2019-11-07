class RemoveUserIdFromKopis < ActiveRecord::Migration[5.2]
  def change
    remove_column :kopis, :user_id, :integer
  end
end
