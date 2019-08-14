class Kopi < ApplicationRecord
  belongs_to :farm
  belongs_to :user
  belongs_to :roastedness
end
