class Kopi < ActiveRecord::Base
  belong_to :Farm
  belong_to :Roast
end