class ChimichangasController < ApplicationController
  before_action :set_chimichanga, only: [:show, :edit, :update, :destroy]

  # GET /chimichangas
  # GET /chimichangas.json
  def index
    @chimichangas = Chimichangas.all
  end

  # GET /chimichangas/1
  # GET /chimichangas/1.json
  def show
  end

  # GET /chimichangas/new
  def new
    @chimichanga = Chimichangas.new
  end

  # GET /chimichangas/1/edit
  def edit
  end

  # POST /chimichangas
  # POST /chimichangas.json
  def create
    @chimichanga = Chimichangas.new(chimichanga_params)

    respond_to do |format|
      if @chimichanga.save
        format.html { redirect_to @chimichanga, notice: 'Chimichangas was successfully created.' }
        format.json { render :show, status: :created, location: @chimichanga }
      else
        format.html { render :new }
        format.json { render json: @chimichanga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chimichangas/1
  # PATCH/PUT /chimichangas/1.json
  def update
    respond_to do |format|
      if @chimichanga.update(chimichanga_params)
        format.html { redirect_to @chimichanga, notice: 'Chimichangas was successfully updated.' }
        format.json { render :show, status: :ok, location: @chimichanga }
      else
        format.html { render :edit }
        format.json { render json: @chimichanga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chimichangas/1
  # DELETE /chimichangas/1.json
  def destroy
    @chimichanga.destroy
    respond_to do |format|
      format.html { redirect_to chimichangas_index_url, notice: 'Chimichangas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chimichanga
      @chimichanga = Chimichangas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chimichanga_params
      params.require(:chimichanga).permit(:title, :description, :price)
    end
end
