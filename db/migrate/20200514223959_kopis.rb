class Kopis < ActiveRecord::Migration[5.2]
  # this is where I can create a table

  # the Kopis table will contain
  # | name | roast | origin |

  def change

    create_table :kopis do |t|
      t.string :name
      t.string :roast
      #t.references :origin
      t.timestamps
    end

  end
end