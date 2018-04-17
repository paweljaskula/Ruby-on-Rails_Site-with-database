class KlienciJaskulasController < ApplicationController
  before_action :set_klienci_jaskula, only: [:show, :edit, :update, :destroy]

  # GET /klienci_jaskulas
  # GET /klienci_jaskulas.json
  def index
    @klienci_jaskulas = KlienciJaskula.all
  end

  # GET /klienci_jaskulas/1
  # GET /klienci_jaskulas/1.json
  def show
  end

  # GET /klienci_jaskulas/new
  def new
    @klienci_jaskula = KlienciJaskula.new
  end

  # GET /klienci_jaskulas/1/edit
  def edit
  end

  # POST /klienci_jaskulas
  # POST /klienci_jaskulas.json
  def create
    @klienci_jaskula = KlienciJaskula.new(klienci_jaskula_params)

    respond_to do |format|
      if @klienci_jaskula.save
        format.html { redirect_to @klienci_jaskula, notice: 'Klienci jaskula was successfully created.' }
        format.json { render :show, status: :created, location: @klienci_jaskula }
      else
        format.html { render :new }
        format.json { render json: @klienci_jaskula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klienci_jaskulas/1
  # PATCH/PUT /klienci_jaskulas/1.json
  def update
    respond_to do |format|
      if @klienci_jaskula.update(klienci_jaskula_params)
        format.html { redirect_to @klienci_jaskula, notice: 'Klienci jaskula was successfully updated.' }
        format.json { render :show, status: :ok, location: @klienci_jaskula }
      else
        format.html { render :edit }
        format.json { render json: @klienci_jaskula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klienci_jaskulas/1
  # DELETE /klienci_jaskulas/1.json
  def destroy
    @klienci_jaskula.destroy
    respond_to do |format|
      format.html { redirect_to klienci_jaskulas_url, notice: 'Klienci jaskula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klienci_jaskula
      @klienci_jaskula = KlienciJaskula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def klienci_jaskula_params
      params.require(:klienci_jaskula).permit(:imie, :nazwisko, :wiek)
    end
end
