class SeafoodsController < ApplicationController
  before_action :set_seafood, only: [:show, :edit, :update, :destroy]

  # GET /seafoods
  # GET /seafoods.json
  def index
    @seafoods = Seafood.all
  end

  # GET /seafoods/1
  # GET /seafoods/1.json
  def show
  end

  # GET /seafoods/new
  def new
    @seafood = Seafood.new
  end

  # GET /seafoods/1/edit
  def edit
  end

  # POST /seafoods
  # POST /seafoods.json
  def create
    @seafood = Seafood.new(seafood_params)

    respond_to do |format|
      if @seafood.save
        format.html { redirect_to @seafood, notice: 'Seafood was successfully created.' }
        format.json { render :show, status: :created, location: @seafood }
      else
        format.html { render :new }
        format.json { render json: @seafood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seafoods/1
  # PATCH/PUT /seafoods/1.json
  def update
    respond_to do |format|
      if @seafood.update(seafood_params)
        format.html { redirect_to @seafood, notice: 'Seafood was successfully updated.' }
        format.json { render :show, status: :ok, location: @seafood }
      else
        format.html { render :edit }
        format.json { render json: @seafood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seafoods/1
  # DELETE /seafoods/1.json
  def destroy
    @seafood.destroy
    respond_to do |format|
      format.html { redirect_to seafoods_url, notice: 'Seafood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seafood
      @seafood = Seafood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seafood_params
      params.require(:seafood).permit(:title, :description, :price)
    end
end
