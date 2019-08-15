class Order < ApplicationRecord
  validates :weight, presence: true
  validates :kopi_id, presence: true
  belongs_to :kopi
end