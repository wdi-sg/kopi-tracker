class Kopi < ActiveRecord::Base
  belong_to :KopiFarm
  belong_to :Roast
end