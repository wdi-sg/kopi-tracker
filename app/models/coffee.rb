class Coffee < ActiveRecord::Base
  belongs_to :origin
  has_many :order
  has_and_belongs_to_many :customers
  def name_with_price
    "#{name}. $#{price}/kg"
  end
end