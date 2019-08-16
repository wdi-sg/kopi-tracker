class Kopi < ActiveRecord::Base
  belongs_to :park, required: false
end
