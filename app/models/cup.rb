class Cup < ActiveRecord::Base
  belongs_to :origin
  has_many :compare
end