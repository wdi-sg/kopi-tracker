class Kopis < ActiveRecord::Migration[5.2]
  def change
      create_table :kopis do |t|
        t.references :roast
    end
  end
end