class Customers < ActiveRecord::Migration[5.2]
    def change
    create_table :customers do |c|
      c.string :name
      c.timestamps
    end
  end
end