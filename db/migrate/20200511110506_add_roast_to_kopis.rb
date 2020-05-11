class AddRoastToKopis < ActiveRecord::Migration[6.0]
  def change
    add_reference :kopis, :roast, null: false, foreign_key: true
  end
end
