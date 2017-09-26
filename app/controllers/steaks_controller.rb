class SteaksController < ApplicationController
  before_action :set_steak, only: [:show, :edit, :update, :destroy]

  # GET /steaks
  # GET /steaks.json
  def index
    @steaks = Steak.all
  end

  # GET /steaks/1
  # GET /steaks/1.json
  def show
  end

  # GET /steaks/new
  def new
    @steak = Steak.new
  end

  # GET /steaks/1/edit
  def edit
  end

  # POST /steaks
  # POST /steaks.json
  def create
    @steak = Steak.new(steak_params)

    respond_to do |format|
      if @steak.save
        format.html { redirect_to @steak, notice: 'Steak was successfully created.' }
        format.json { render :show, status: :created, location: @steak }
      else
        format.html { render :new }
        format.json { render json: @steak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steaks/1
  # PATCH/PUT /steaks/1.json
  def update
    respond_to do |format|
      if @steak.update(steak_params)
        format.html { redirect_to @steak, notice: 'Steak was successfully updated.' }
        format.json { render :show, status: :ok, location: @steak }
      else
        format.html { render :edit }
        format.json { render json: @steak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steaks/1
  # DELETE /steaks/1.json
  def destroy
    @steak.destroy
    respond_to do |format|
      format.html { redirect_to steaks_url, notice: 'Steak was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_steak
      @steak = Steak.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def steak_params
      params.require(:steak).permit(:title, :description, :price)
    end
end
