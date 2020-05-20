class Customer < ApplicationRecord
	has_and_belongs_to_many :kopis,
		join_table: 'customer_preferences'
	validates :name, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :phone, presence: true, uniqueness: true
end