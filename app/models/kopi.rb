class Kopi < ActiveRecord::Base
      belongs_to :kopi_farm
      belongs_to :roast
end
