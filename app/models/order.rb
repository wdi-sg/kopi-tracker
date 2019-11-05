class Order < ApplicationRecord
  belongs_to :kopi
  belongs_to :user
end