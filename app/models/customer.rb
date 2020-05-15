class Customer < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 6, maximum: 20 }
  has_and_belongs_to_many :kopis
end