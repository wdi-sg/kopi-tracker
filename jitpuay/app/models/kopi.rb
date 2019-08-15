class Kopi < ActiveRecord::Base
  belongs_to :farm
  belongs_to :user
end