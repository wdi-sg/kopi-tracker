class Origin < ActiveRecord::Base
  has_many :kopi
  belongs_to :user
end