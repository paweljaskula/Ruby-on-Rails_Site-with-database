class ZasobyJaskulasController < ApplicationController
  before_action :set_zasoby_jaskula, only: [:show, :edit, :update, :destroy]

  # GET /zasoby_jaskulas
  # GET /zasoby_jaskulas.json
  def index
    @zasoby_jaskulas = ZasobyJaskula.all
  end

  # GET /zasoby_jaskulas/1
  # GET /zasoby_jaskulas/1.json
  def show
  end

  # GET /zasoby_jaskulas/new
  def new
    @zasoby_jaskula = ZasobyJaskula.new
  end

  # GET /zasoby_jaskulas/1/edit
  def edit
  end

  # POST /zasoby_jaskulas
  # POST /zasoby_jaskulas.json
  def create
    @zasoby_jaskula = ZasobyJaskula.new(zasoby_jaskula_params)

    respond_to do |format|
      if @zasoby_jaskula.save
        format.html { redirect_to @zasoby_jaskula, notice: 'Zasoby jaskula was successfully created.' }
        format.json { render :show, status: :created, location: @zasoby_jaskula }
      else
        format.html { render :new }
        format.json { render json: @zasoby_jaskula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zasoby_jaskulas/1
  # PATCH/PUT /zasoby_jaskulas/1.json
  def update
    respond_to do |format|
      if @zasoby_jaskula.update(zasoby_jaskula_params)
        format.html { redirect_to @zasoby_jaskula, notice: 'Zasoby jaskula was successfully updated.' }
        format.json { render :show, status: :ok, location: @zasoby_jaskula }
      else
        format.html { render :edit }
        format.json { render json: @zasoby_jaskula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zasoby_jaskulas/1
  # DELETE /zasoby_jaskulas/1.json
  def destroy
    @zasoby_jaskula.destroy
    respond_to do |format|
      format.html { redirect_to zasoby_jaskulas_url, notice: 'Zasoby jaskula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zasoby_jaskula
      @zasoby_jaskula = ZasobyJaskula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zasoby_jaskula_params
      params.require(:zasoby_jaskula).permit(:nazwa, :cena)
    end
end
