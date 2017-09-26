class FajitasController < ApplicationController
  before_action :set_fajita, only: [:show, :edit, :update, :destroy]

  # GET /fajitas
  # GET /fajitas.json
  def index
    @fajitas = Fajitas.all
  end

  # GET /fajitas/1
  # GET /fajitas/1.json
  def show
  end

  # GET /fajitas/new
  def new
    @fajita = Fajitas.new
  end

  # GET /fajitas/1/edit
  def edit
  end

  # POST /fajitas
  # POST /fajitas.json
  def create
    @fajita = Fajitas.new(fajita_params)

    respond_to do |format|
      if @fajita.save
        format.html { redirect_to @fajita, notice: 'Fajitas was successfully created.' }
        format.json { render :show, status: :created, location: @fajita }
      else
        format.html { render :new }
        format.json { render json: @fajita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fajitas/1
  # PATCH/PUT /fajitas/1.json
  def update
    respond_to do |format|
      if @fajita.update(fajita_params)
        format.html { redirect_to @fajita, notice: 'Fajitas was successfully updated.' }
        format.json { render :show, status: :ok, location: @fajita }
      else
        format.html { render :edit }
        format.json { render json: @fajita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fajitas/1
  # DELETE /fajitas/1.json
  def destroy
    @fajita.destroy
    respond_to do |format|
      format.html { redirect_to fajitas_index_url, notice: 'Fajitas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fajita
      @fajita = Fajitas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fajita_params
      params.require(:fajita).permit(:title, :description, :price)
    end
end
