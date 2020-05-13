class KopisController < ApplicationController
  before_action :set_user_or_customer
  before_action :set_kopi, only: [:show, :edit, :update, :destroy]
  before_action :check_user_or_customer, only: [:new, :edit, :update, :destroy]
  before_action :check_admin, only: [:edit, :update, :destroy]

  # GET /kopis
  # GET /kopis.json
  def index
    @kopis = Kopi.all
  end

  # GET /kopis/1
  # GET /kopis/1.json
  def show
    @customers = Kopi.find(params[:id]).customers
  end

  # GET /kopis/new
  def new
    if !current_user
    redirect_to kopis_path
    end
    @kopi = Kopi.new
  end

  # GET /kopis/1/edit
  def edit
  end

  # POST /kopis
  # POST /kopis.json
  def create
    @kopi = Kopi.new(kopi_params)

    respond_to do |format|
      if @kopi.save
        format.html { redirect_to @kopi, notice: 'Kopi was successfully created.' }
        format.json { render :show, status: :created, location: @kopi }
      else
        format.html { render :new }
        format.json { render json: @kopi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kopis/1
  # PATCH/PUT /kopis/1.json
  def update
    respond_to do |format|
      if @kopi.update(kopi_params)
        format.html { redirect_to @kopi, notice: 'Kopi was successfully updated.' }
        format.json { render :show, status: :ok, location: @kopi }
      else
        format.html { render :edit }
        format.json { render json: @kopi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kopis/1
  # DELETE /kopis/1.json
  def destroy
    @kopi.destroy
    respond_to do |format|
      format.html { redirect_to kopis_url, notice: 'Kopi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kopi
      @kopi = Kopi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kopi_params
      params.require(:kopi).permit(:name, :roast, :origin_id)
    end

    def set_user_or_customer
      if current_user
        @user = current_user
      elsif current_customer
        @customer = current_customer
      end
    end

    def check_user_or_customer
      if !current_user || current_customer
        redirect_to kopis_path
      end
    end

    def check_admin
      if !current_user.try(:admin?)
        redirect_to kopis_path
      end
    end
end