class CreateKopiCustomerJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :customers, :kopis do |t|
      # t.index [:artist_id, :music_id]
      t.index [:customer_id, :kopi_id]
    end
  end
end
