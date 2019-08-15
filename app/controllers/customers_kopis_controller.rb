# class CustomersKopisController < ApplicationController

#   def index
#     @customers_kopis = CustomersKopis.all
#   end

#   def show
#   end

#   def create
#     @customers_kopi = CustomersKopi.new(customers_kopi_params)

#     @customers_kopi.save
#     redirect_to @customers_kopi
#   end

#   def new
#     @customers_kopi = CustomersKopi.new
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_customers_kopi
#       @customers_kopi = CustomersKopi.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def customers_kopi_params
#       params.require(:customers_kopi).permit(:customer_id, :kopi_id)
#     end
#   end