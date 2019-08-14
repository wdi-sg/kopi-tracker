
class Origin < ActiveRecord::Base
  has_many :kopichart
end

     # create_table :origins do |t|
     #  t.string :origin_name
     #  t.string :location
     #  t.string :phone
     #  t.timestamps