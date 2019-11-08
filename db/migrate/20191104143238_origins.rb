# frozen_string_literal: true

# create table for origins
class Origins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.string :location
      t.string :phone
      t.timestamps
    end
  end
end
