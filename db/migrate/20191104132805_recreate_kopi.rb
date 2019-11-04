class RecreateKopi < ActiveRecord::Migration[5.2]
  def change
      drop_table :kopis

      create_table :kopis do |t|
      t.string :name
      t.references :roast
      t.references :origin
      end
  end
end