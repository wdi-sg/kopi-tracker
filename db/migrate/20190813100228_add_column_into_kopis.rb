class AddColumnIntoKopis < ActiveRecord::Migration[5.2]
  def change
        add_reference :kopis, :roast, index: true
  end
end
