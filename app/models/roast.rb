# frozen_string_literal: true

# model for roast
class Roast < ActiveRecord::Base
  # each origin can have many kopis
  has_many :kopi
end
