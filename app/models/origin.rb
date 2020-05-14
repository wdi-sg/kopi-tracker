class Origin < ActiveRecord::Base
  has_many :kopi
  validates :location, presence: true, length: { minimum: 3, maximum: 20 }
end