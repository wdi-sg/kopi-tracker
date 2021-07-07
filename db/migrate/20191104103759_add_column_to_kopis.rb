class AddColumnToKopis < ActiveRecord::Migration[5.2]
  def change
    add_reference :kopis, :roast, foreign_key: true
  end
end
