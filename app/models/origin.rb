class Origin < ActiveRecord::Base
  has_many :kopi
  belongs_to :user

  validates :location, length: { minimum: 2 }
  validates :phone, numericality: true
  validates :phone, length: { maximum: 8 }
end