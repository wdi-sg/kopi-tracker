class DropKopisCustomersTable < ActiveRecord::Migration[5.2]
    def change
        drop_table :kopis_customers
    end
end
