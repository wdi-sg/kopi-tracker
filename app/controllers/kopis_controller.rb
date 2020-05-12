class KopisController < ApplicationController
  before_action :set_kopi, only: [:show, :edit, :update, :destroy]
  before_action :set_origin, only: [:show, :edit, :update, :destroy]
  before_action :set_roast, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [ :show, :index ]

  # GET /kopis
  # GET /kopis.json
  def index
    @kopis = Kopi.all
    @origins = {}
    Origin.all.each do |origin|
      @origins[origin.id] = origin.location
    end
    @roasts = {}
    Roast.all.each do |roast|
      @roasts[roast.id] = roast.name
    end
  end

  # GET /kopis/1
  # GET /kopis/1.json
  def show
  end

  # GET /kopis/new
  def new
    @kopi = Kopi.new
    @origins = Origin.all
    @roasts = Roast.all
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

    def set_origin
      @origin = Origin.find_by(id: @kopi.origin_id)
    end

    def set_roast
      @roast = Roast.find_by(id: @kopi.roast_id)
    end
    # Only allow a list of trusted parameters through.
    def kopi_params
      params.require(:kopi).permit(:name, :roast_id, :origin_id)
    end
end
