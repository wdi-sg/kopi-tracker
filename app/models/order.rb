class Order < ActiveRecord::Base
  belongs_to :kopi
  belongs_to :user
  belongs_to :report
end