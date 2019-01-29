class Coffee < ActiveRecord::Base
  belongs_to :origin
  has_and_belongs_to_many :customers
end