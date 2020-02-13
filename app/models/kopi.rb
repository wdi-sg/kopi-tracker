class Kopi < ActiveRecord::Base
  before_validation do |model|
    model.subset_array.reject!(&:blank?) if model.subset_array
  end

  belongs_to :origin
  belongs_to :roast
  belongs_to :user
  has_and_belongs_to_many :customers
end
