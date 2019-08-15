class Origin < ActiveRecord::Base
    has_many :kopi, dependent: :destroy
    validates :location, presence: true
    validates :phone, presence: true
    belongs_to :user
end