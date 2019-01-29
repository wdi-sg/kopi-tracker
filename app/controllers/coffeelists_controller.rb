class CoffeelistsController < ApplicationController
    helper_method :sort_column, :sort_direction

    def index
        @coffee = Coffeelist.order("#{sort_column} #{sort_direction}")
    end

    def show
        @coffee = Coffeelist.find(params[:id])
    end

    private
    def sortable_columns
        ['name', 'roastedness', 'origin', 'order(kg)']
    end

    def sort_column
        sortable_columns.include?(params[:sort]) ? params[:sort] : 'name'
    end

    def sort_direction
        %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
    end
end
