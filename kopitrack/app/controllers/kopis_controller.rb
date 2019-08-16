class KopisController < ApplicationController
    def new
        @origins = Origin.all
    end
end
