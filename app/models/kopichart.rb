
class Kopichart < ActiveRecord::

  belongs_to :roast
  belongs_to :origin

end

    # create_table :kopicharts do |t|
    #   t.string :kopi_name
    #   t.references :roast_name
    #   t.references :origin_name
    #   t.timestamps