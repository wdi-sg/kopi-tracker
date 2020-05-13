class Origin < ApplicationRecord
  has_many :kopi, dependent: :destroy
end
