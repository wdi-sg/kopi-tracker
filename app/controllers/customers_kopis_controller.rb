class CustomersKopisController < ApplicationController
  before_action :set_customers_kopi, only: [:show, :edit, :update, :destroy]

  # GET /customers_kopis
  # GET /customers_kopis.json
  def index
    @customers_kopis = CustomersKopi.all
  end

  # GET /customers_kopis/1
  # GET /customers_kopis/1.json
  def show
  end

  # GET /customers_kopis/new
  def new
    @customers_kopi = CustomersKopi.new
  end

  # GET /customers_kopis/1/edit
  def edit
  end

  # POST /customers_kopis
  # POST /customers_kopis.json
  def create
    @customers_kopi = CustomersKopi.new(customers_kopi_params)

    respond_to do |format|
      if @customers_kopi.save
        format.html { redirect_to @customers_kopi, notice: 'Customers kopi was successfully created.' }
        format.json { render :show, status: :created, location: @customers_kopi }
      else
        format.html { render :new }
        format.json { render json: @customers_kopi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers_kopis/1
  # PATCH/PUT /customers_kopis/1.json
  def update
    respond_to do |format|
      if @customers_kopi.update(customers_kopi_params)
        format.html { redirect_to @customers_kopi, notice: 'Customers kopi was successfully updated.' }
        format.json { render :show, status: :ok, location: @customers_kopi }
      else
        format.html { render :edit }
        format.json { render json: @customers_kopi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers_kopis/1
  # DELETE /customers_kopis/1.json
  def destroy
    @customers_kopi.destroy
    respond_to do |format|
      format.html { redirect_to customers_kopis_url, notice: 'Customers kopi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customers_kopi
      @customers_kopi = CustomersKopi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customers_kopi_params
      params.require(:customers_kopi).permit(:customer_id, :kopi_id)
    end
end
