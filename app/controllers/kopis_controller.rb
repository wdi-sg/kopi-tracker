class KopisController < ApplicationController
  before_action :set_kopi, only: [:show, :edit, :update, :destroy]

  # GET /kopis
  # GET /kopis.json
  def index
    @kopis = Kopi.all
  end

  # GET /kopis/1
  # GET /kopis/1.json
  def show
  end

  # GET /kopis/new
  def new
    @kopi = Kopi.new
    @roasts = Roast.all
    @origins = Origin.all
  end

  # GET /kopis/1/edit
  def edit
    @kopi = set_kopi
    @roasts = Roast.all
    @origins = Origin.all
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
      params.require(:kopi).permit(:name, :roast_id, :origin_id)
    end
end
