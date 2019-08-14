
class Roast < ActiveRecord::Base
  has_many :kopichart
end

      # create_table :roasts do |t|
      # t.string :roast_name
      # t.string :level
      # t.reference :kopi_name
      # t.timestamps