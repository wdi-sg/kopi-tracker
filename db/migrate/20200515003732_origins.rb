class Origins < ActiveRecord::Migration[5.2]
  def change

    create_table :origins do |t|
      t.string :location
      t.string :phone
      t.timestamps
    end

    # to add a new column in kopis
    #add_column :kopis, :origins_id, :bigint

  end
end