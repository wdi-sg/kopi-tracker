class Origin < ActiveRecord::Base
  has_many :kopi
  validates :location, presence: true
  validates :phone, presence: true
end
