class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
        t.name
        t.timestamps
    end
  end
end
