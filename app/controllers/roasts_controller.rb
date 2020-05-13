class RoastsController < ApplicationController
  before_action :set_roast, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [ :show, :index ]
  before_action :check_admin, :except => [ :show, :index ]

  # GET /roasts
  # GET /roasts.json
  def index
    @roasts = Roast.all
  end

  # GET /roasts/1
  # GET /roasts/1.json
  def show
  end

  # GET /roasts/new
  def new
    @roast = Roast.new
  end

  # GET /roasts/1/edit
  def edit
  end

  # POST /roasts
  # POST /roasts.json
  def create
    @roast = Roast.new(roast_params)

    respond_to do |format|
      if @roast.save
        format.html { redirect_to @roast, notice: 'Roast was successfully created.' }
        format.json { render :show, status: :created, location: @roast }
      else
        format.html { render :new }
        format.json { render json: @roast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roasts/1
  # PATCH/PUT /roasts/1.json
  def update
    respond_to do |format|
      if @roast.update(roast_params)
        format.html { redirect_to @roast, notice: 'Roast was successfully updated.' }
        format.json { render :show, status: :ok, location: @roast }
      else
        format.html { render :edit }
        format.json { render json: @roast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roasts/1
  # DELETE /roasts/1.json
  def destroy
    @roast.destroy
    respond_to do |format|
      format.html { redirect_to roasts_url, notice: 'Roast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roast
      @roast = Roast.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roast_params
      params.require(:roast).permit(:name, :level)
    end

    def check_admin
      if current_user.admin? == false
        redirect_to new_user_session_path
      end
    end
end
