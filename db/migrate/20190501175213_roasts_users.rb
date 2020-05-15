class RoastsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :roasts_users do |t|
      t.references :roast
      t.references :user
      t.timestamps
    end
  end
end