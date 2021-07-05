class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.float :weight_in_pound
      t.references :kopi
    end
    
  end
end


