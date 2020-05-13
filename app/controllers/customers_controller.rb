class CustomersController < ApplicationController

  # GET /customers/1
  def show
    @customer = current_customer
  end

  def edit
    @kopis = Kopi.all
    @customer = current_customer
  end

  def update
    @customer = current_customer
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer Kopis Updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.

    def set_user
      @user = current_user
    end

    def check_user
      if !current_user
        redirect_to customers_path
      end
    end

    def check_admin
      if !current_user.try(:admin?)
        redirect_to customers_path
      end
    end

    def customer_params
      params.require(:customer).permit(:kopi_ids => [])
    end

end