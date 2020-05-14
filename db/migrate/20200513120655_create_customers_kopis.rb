class CreateCustomersKopis < ActiveRecord::Migration[6.0]
  def change
    create_table :customers_kopis do |t|
      t.belongs_to :customer
      t.belongs_to :kopi
    end
  end
end