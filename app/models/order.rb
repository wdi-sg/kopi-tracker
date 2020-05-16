class Order < ApplicationRecord
  paginates_per 6

  validates :weight, presence: true
  validates :kopi_id, presence: true
  belongs_to :kopi
  belongs_to :user

end