# frozen_string_literal: true

# model for origin
class Origin < ActiveRecord::Base
  # each origin can have many kopis
  has_many :kopi
end
