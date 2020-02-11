class NewKopi < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis do |t|
      t.text :name
      t.references :origins
      t.references :roasts
      t.timestamps
    end
  end
end
