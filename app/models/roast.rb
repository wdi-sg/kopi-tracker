class Roast < ApplicationRecord
  has_many :kopis

  def display_roast
    "#{self.level}: #{self.name}"
  end
end
