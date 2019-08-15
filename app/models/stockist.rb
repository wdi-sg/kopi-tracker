class Stockist < ActiveRecord::Base
  has_and_belongs_to_many :kopis
end