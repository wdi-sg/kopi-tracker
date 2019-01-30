class Cup < ActiveRecord::Base
  belongs_to :origin
  has_many :compare
  has_and_belongs_to_many :customers
end