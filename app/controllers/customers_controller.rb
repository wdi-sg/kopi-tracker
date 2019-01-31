class CustomersController < ApplicationController
    helper_method :sort_column, :sort_direction
    
    def index
        @customer = Customer.order("#{sort_column} #{sort_direction}")
    end

    private
    def sortable_columns
        ['name']
    end

    def sort_column
        sortable_columns.include?(params[:sort]) ? params[:sort] : 'name'
    end

    def sort_direction
        %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
    end
end
