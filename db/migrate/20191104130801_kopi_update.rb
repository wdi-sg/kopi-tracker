class KopiUpdate < ActiveRecord::Migration[5.2]
  def change
    remove_column :kopis, :roast, :string
    add_column :kopis, :roast, :integer, references: :roasts
  end
end