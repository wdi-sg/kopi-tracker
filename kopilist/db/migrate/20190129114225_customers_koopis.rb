class CustomersKoopis < ActiveRecord::Migration[5.2]
  def change

    create_table :customers_koopis do |t|
      t.references :customer
      t.references :koopi
      t.timestamps
    end



  end
end