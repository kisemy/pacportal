class FistulaRegistersController < ApplicationController
  before_action :set_fistula_register, only: %i[ show edit update destroy ]

  # GET /fistula_registers or /fistula_registers.json
  def index
    @fistula_registers = FistulaRegister.all
    @data = FistulaRegister.group(:region).count

      end

  # GET /fistula_registers/1 or /fistula_registers/1.json
  def show
  end

  # GET /fistula_registers/new
  def new
    @fistula_register = FistulaRegister.new
  end

  # GET /fistula_registers/1/edit
  def edit
  end

  # POST /fistula_registers or /fistula_registers.json
  def create
    @fistula_register = FistulaRegister.new(fistula_register_params)

    respond_to do |format|
      if @fistula_register.save
        format.html { redirect_to @fistula_register, notice: "Fistula register was successfully created." }
        format.json { render :show, status: :created, location: @fistula_register }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fistula_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fistula_registers/1 or /fistula_registers/1.json
  def update
    respond_to do |format|
      if @fistula_register.update(fistula_register_params)
        format.html { redirect_to @fistula_register, notice: "Fistula register was successfully updated." }
        format.json { render :show, status: :ok, location: @fistula_register }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fistula_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fistula_registers/1 or /fistula_registers/1.json
  def destroy
    @fistula_register.destroy
    respond_to do |format|
      format.html { redirect_to fistula_registers_url, notice: "Fistula register was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fistula_register
      @fistula_register = FistulaRegister.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fistula_register_params
      params.require(:fistula_register).permit(:Name, :Location, :Region, :Marital_status, :Telephone, :Next_of_Kin)
    end
end
