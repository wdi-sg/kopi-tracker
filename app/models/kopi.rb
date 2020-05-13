class Kopi < ActiveRecord::Base
  has_and_belongs_to_many :customers
  # belongs_to :roast
  # belongs_to :origin
  # belongs_to :user
end