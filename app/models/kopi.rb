class Kopi < ApplicationRecord
  belongs_to :origin, optional: true
  belongs_to :user
end
