class Roast < ActiveRecord::Base
  has_many :kopi
  has_and_belongs_to_many :users
end