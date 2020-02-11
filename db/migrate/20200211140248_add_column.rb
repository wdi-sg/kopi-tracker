class AddColumn < ActiveRecord::Migration[5.2]
  def change
     change_table(:kopis) do |t|
    t.references :roast
  end
  end
end
