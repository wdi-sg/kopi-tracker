class CreateKopiFarmsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :kopi_farms do |t|
      t.string :location
      t.string :phone_num
    end
  end
end
