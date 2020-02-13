class AddCustomerToKopis < ActiveRecord::Migration[5.2]
  def change
    add_reference :kopis, :customer, foreign_key: true
  end
end
