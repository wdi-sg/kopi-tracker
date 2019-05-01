class CustomersController < ApplicationController
  before_action :authenticate_user!

  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index

    if request.query_parameters[:sort] === "desc"
      @customers = Customer.order(kopi_count: :desc)

    elsif request.query_parameters[:sort] === "asc"
      @customers = Customer.order(kopi_count: :asc)

    else
      @customers = Customer.all

    end

  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new

    @kopis = Kopi.all
  end

  # GET /customers/1/edit
  def edit
    @kopis = Kopi.all
  end

  # POST /customers
  # POST /customers.json
  def create

    @customer = Customer.new(customer_params)
    @customer.user = current_user

    # count num of kopi and put in table
    @customer.kopi_count = @customer.kopi_ids.count

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    puts "-----------------------------"
    count = customer_params[:kopi_ids].count - 1

    respond_to do |format|
      if @customer.update(customer_params)
        @customer.update(:kopi_count => count)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:name, :phone, :kopi_ids => [])
    end
end