class SaladsController < ApplicationController
  before_action :set_salad, only: [:show, :edit, :update, :destroy]

  # GET /salads
  # GET /salads.json
  def index
    @salads = Salad.all
  end

  # GET /salads/1
  # GET /salads/1.json
  def show
  end

  # GET /salads/new
  def new
    @salad = Salad.new
  end

  # GET /salads/1/edit
  def edit
  end

  # POST /salads
  # POST /salads.json
  def create
    @salad = Salad.new(salad_params)

    respond_to do |format|
      if @salad.save
        format.html { redirect_to @salad, notice: 'Salad was successfully created.' }
        format.json { render :show, status: :created, location: @salad }
      else
        format.html { render :new }
        format.json { render json: @salad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salads/1
  # PATCH/PUT /salads/1.json
  def update
    respond_to do |format|
      if @salad.update(salad_params)
        format.html { redirect_to @salad, notice: 'Salad was successfully updated.' }
        format.json { render :show, status: :ok, location: @salad }
      else
        format.html { render :edit }
        format.json { render json: @salad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salads/1
  # DELETE /salads/1.json
  def destroy
    @salad.destroy
    respond_to do |format|
      format.html { redirect_to salads_url, notice: 'Salad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salad
      @salad = Salad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salad_params
      params.require(:salad).permit(:title, :description, :price)
    end
end
