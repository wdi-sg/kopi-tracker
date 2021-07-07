class AddTimestampsToRoasts < ActiveRecord::Migration[5.2]
  def change
    add_column :roasts, :created_at, :datetime
    add_column :roasts, :updated_at, :datetime
  end
end
