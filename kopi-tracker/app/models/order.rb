class Order < ActiveRecord::Base
  belongs_to :customer
  has_and_belongs_to_many :kopis
end