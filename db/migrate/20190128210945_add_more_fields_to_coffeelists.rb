class AddMoreFieldsToCoffeelists < ActiveRecord::Migration[5.2]
  def change
    add_reference :coffeelists, :order, foreign_key: true
  end
end
