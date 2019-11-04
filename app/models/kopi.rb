# frozen_string_literal: true

# model for kopi
class Kopi < ActiveRecord::Base
  # each kopi belongs to an origin
  belongs_to :origin
  belongs_to :roast
end
