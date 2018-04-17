class TransakcjeJaskulasController < ApplicationController
  before_action :set_transakcje_jaskula, only: [:show, :edit, :update, :destroy]

  # GET /transakcje_jaskulas
  # GET /transakcje_jaskulas.json
  def index
    @transakcje_jaskulas = TransakcjeJaskula.all
  end

  # GET /transakcje_jaskulas/1
  # GET /transakcje_jaskulas/1.json
  def show
  end

  # GET /transakcje_jaskulas/new
  def new
    @transakcje_jaskula = TransakcjeJaskula.new
  end

  # GET /transakcje_jaskulas/1/edit
  def edit
  end

  # POST /transakcje_jaskulas
  # POST /transakcje_jaskulas.json
  def create
    @transakcje_jaskula = TransakcjeJaskula.new(transakcje_jaskula_params)

    respond_to do |format|
      if @transakcje_jaskula.save
        format.html { redirect_to @transakcje_jaskula, notice: 'Transakcje jaskula was successfully created.' }
        format.json { render :show, status: :created, location: @transakcje_jaskula }
      else
        format.html { render :new }
        format.json { render json: @transakcje_jaskula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transakcje_jaskulas/1
  # PATCH/PUT /transakcje_jaskulas/1.json
  def update
    respond_to do |format|
      if @transakcje_jaskula.update(transakcje_jaskula_params)
        format.html { redirect_to @transakcje_jaskula, notice: 'Transakcje jaskula was successfully updated.' }
        format.json { render :show, status: :ok, location: @transakcje_jaskula }
      else
        format.html { render :edit }
        format.json { render json: @transakcje_jaskula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transakcje_jaskulas/1
  # DELETE /transakcje_jaskulas/1.json
  def destroy
    @transakcje_jaskula.destroy
    respond_to do |format|
      format.html { redirect_to transakcje_jaskulas_url, notice: 'Transakcje jaskula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transakcje_jaskula
      @transakcje_jaskula = TransakcjeJaskula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transakcje_jaskula_params
      params.require(:transakcje_jaskula).permit(:username, :kwota, :data)
    end
end
