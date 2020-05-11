class Renameroasts < ActiveRecord::Migration[6.0]
  def change
    rename_table :roast, :roasts
  end
end
