class OrginsController < ApplicationController
  def index
    @origin = Origin.all
  end
end