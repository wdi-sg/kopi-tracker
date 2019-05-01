class KopisUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis_users do |t|
      t.references :kopi
      t.references :user
      t.timestamps
    end
  end
end