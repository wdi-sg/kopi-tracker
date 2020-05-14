class CreateCustomerPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_preferences do |t|
      t.references :customer, foreign_key: true
      t.references :kopi, foreign_key: true
    end
  end
end
