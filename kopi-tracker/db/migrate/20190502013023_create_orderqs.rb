class CreateOrderqs < ActiveRecord::Migration[5.2]
  def change
    create_table :orderqs do |t|

      t.timestamps
    end
  end
end
