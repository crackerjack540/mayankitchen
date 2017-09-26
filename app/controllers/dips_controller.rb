class DipsController < ApplicationController
  before_action :set_dip, only: [:show, :edit, :update, :destroy]

  # GET /dips
  # GET /dips.json
  def index
    @dips = Dip.all
  end

  # GET /dips/1
  # GET /dips/1.json
  def show
  end

  # GET /dips/new
  def new
    @dip = Dip.new
  end

  # GET /dips/1/edit
  def edit
  end

  # POST /dips
  # POST /dips.json
  def create
    @dip = Dip.new(dip_params)

    respond_to do |format|
      if @dip.save
        format.html { redirect_to @dip, notice: 'Dip was successfully created.' }
        format.json { render :show, status: :created, location: @dip }
      else
        format.html { render :new }
        format.json { render json: @dip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dips/1
  # PATCH/PUT /dips/1.json
  def update
    respond_to do |format|
      if @dip.update(dip_params)
        format.html { redirect_to @dip, notice: 'Dip was successfully updated.' }
        format.json { render :show, status: :ok, location: @dip }
      else
        format.html { render :edit }
        format.json { render json: @dip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dips/1
  # DELETE /dips/1.json
  def destroy
    @dip.destroy
    respond_to do |format|
      format.html { redirect_to dips_url, notice: 'Dip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dip
      @dip = Dip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dip_params
      params.require(:dip).permit(:title, :description, :price)
    end
end
