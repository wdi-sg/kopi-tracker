class OriginsController < ApplicationController
    def index

    end

    def new

    end

    def create
        render plain: params[:origin].inspect
    end
 end
