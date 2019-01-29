class Coffee < ActiveRecord::Base
    belongs_to :farm
    has_and_belongs_to_many :customer
end