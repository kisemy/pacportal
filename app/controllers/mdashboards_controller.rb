class MdashboardsController < ApplicationController
  before_action :set_mdashboard, only: %i[ show edit update destroy ]

  # GET /mdashboards or /mdashboards.json
  def index
    @mdashboards = Mdashboard.all
   @fistula_registers = FistulaRegister.all
   @data = FistulaRegister.group(:region).count
    @ploc = FistulaRegister.group(:location).count
  end

  # GET /mdashboards/1 or /mdashboards/1.json
  def show
  end

  # GET /mdashboards/new
  def new
    @mdashboard = Mdashboard.new
  end

  # GET /mdashboards/1/edit
  def edit
  end

  # POST /mdashboards or /mdashboards.json
  def create
    @mdashboard = Mdashboard.new(mdashboard_params)

    respond_to do |format|
      if @mdashboard.save
        format.html { redirect_to @mdashboard, notice: "Mdashboard was successfully created." }
        format.json { render :show, status: :created, location: @mdashboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mdashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mdashboards/1 or /mdashboards/1.json
  def update
    respond_to do |format|
      if @mdashboard.update(mdashboard_params)
        format.html { redirect_to @mdashboard, notice: "Mdashboard was successfully updated." }
        format.json { render :show, status: :ok, location: @mdashboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mdashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mdashboards/1 or /mdashboards/1.json
  def destroy
    @mdashboard.destroy
    respond_to do |format|
      format.html { redirect_to mdashboards_url, notice: "Mdashboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mdashboard
      @mdashboard = Mdashboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mdashboard_params
      params.require(:mdashboard).permit(:desc)
    end
end
