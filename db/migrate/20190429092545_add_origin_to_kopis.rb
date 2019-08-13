class AddOriginToKopis < ActiveRecord::Migration[5.2]
  def change
    add_reference :kopis, :origin, foreign_key: true
  end
end
