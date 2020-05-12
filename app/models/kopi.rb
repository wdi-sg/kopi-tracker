class Kopi < ActiveRecord::Base
  belongs_to :roast
  belongs_to :origin
  belongs_to :user
end