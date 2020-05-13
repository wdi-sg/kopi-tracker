class AddCustomersToKopis < ActiveRecord::Migration[5.2]
  def change
    add_column :kopis, :customers, :string
  end
end
