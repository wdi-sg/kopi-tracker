class Kopi < ActiveRecord::Base
    belongs_to :roast
    belongs_to :origin
    has_and_belongs_to_many :customer
    belongs_to :user
  end