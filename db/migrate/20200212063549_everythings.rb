class Everythings < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.string :name
      t.references :roast
      t.references :origin
    end
  
    create_table :origins do |t|
      t.string :location
      t.string :phone
    end
  
    create_table :roasts do |t|
      t.string :name
    end
  end
end
