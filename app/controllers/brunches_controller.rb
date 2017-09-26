class BrunchesController < ApplicationController
  before_action :set_brunch, only: [:show, :edit, :update, :destroy]

  # GET /brunches
  # GET /brunches.json
  def index
    @brunches = Brunch.all
  end

  # GET /brunches/1
  # GET /brunches/1.json
  def show
  end

  # GET /brunches/new
  def new
    @brunch = Brunch.new
  end

  # GET /brunches/1/edit
  def edit
  end

  # POST /brunches
  # POST /brunches.json
  def create
    @brunch = Brunch.new(brunch_params)

    respond_to do |format|
      if @brunch.save
        format.html { redirect_to @brunch, notice: 'Brunch was successfully created.' }
        format.json { render :show, status: :created, location: @brunch }
      else
        format.html { render :new }
        format.json { render json: @brunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brunches/1
  # PATCH/PUT /brunches/1.json
  def update
    respond_to do |format|
      if @brunch.update(brunch_params)
        format.html { redirect_to @brunch, notice: 'Brunch was successfully updated.' }
        format.json { render :show, status: :ok, location: @brunch }
      else
        format.html { render :edit }
        format.json { render json: @brunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brunches/1
  # DELETE /brunches/1.json
  def destroy
    @brunch.destroy
    respond_to do |format|
      format.html { redirect_to brunches_url, notice: 'Brunch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brunch
      @brunch = Brunch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brunch_params
      params.require(:brunch).permit(:title, :description, :price)
    end
end
