class PhomesController < ApplicationController
  before_action :set_phome, only: %i[ show edit update destroy ]

  # GET /phomes or /phomes.json
  def index
    @phomes = Phome.all
    @fistula_registers = FistulaRegister.all
    @data = FistulaRegister.group(:region).count
    @ploc = FistulaRegister.group(:location).count
  end

  # GET /phomes/1 or /phomes/1.json
  def show
  end

  # GET /phomes/new
  def new
    @phome = Phome.new
  end

  # GET /phomes/1/edit
  def edit
  end

  # POST /phomes or /phomes.json
  def create
    @phome = Phome.new(phome_params)

    respond_to do |format|
      if @phome.save
        format.html { redirect_to @phome, notice: "Phome was successfully created." }
        format.json { render :show, status: :created, location: @phome }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phomes/1 or /phomes/1.json
  def update
    respond_to do |format|
      if @phome.update(phome_params)
        format.html { redirect_to @phome, notice: "Phome was successfully updated." }
        format.json { render :show, status: :ok, location: @phome }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phomes/1 or /phomes/1.json
  def destroy
    @phome.destroy
    respond_to do |format|
      format.html { redirect_to phomes_url, notice: "Phome was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phome
      @phome = Phome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phome_params
      params.require(:phome).permit(:desc)
    end
end
