class Order < ActiveRecord::Base
	has_and_belongs_to_many :kopi
	belongs_to :user
end