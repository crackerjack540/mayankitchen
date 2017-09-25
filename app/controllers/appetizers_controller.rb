class AppetizersController < ApplicationController
  before_action :set_appetizer, only: [:show, :edit, :update, :destroy]

  # GET /appetizers
  # GET /appetizers.json
  def index
    @appetizers = Appetizer.all
  end

  # GET /appetizers/1
  # GET /appetizers/1.json
  def show
  end

  # GET /appetizers/new
  def new
    @appetizer = Appetizer.new
  end

  # GET /appetizers/1/edit
  def edit
  end

  # POST /appetizers
  # POST /appetizers.json
  def create
    @appetizer = Appetizer.new(appetizer_params)

    respond_to do |format|
      if @appetizer.save
        format.html { redirect_to @appetizer, notice: 'Appetizer was successfully created.' }
        format.json { render :show, status: :created, location: @appetizer }
      else
        format.html { render :new }
        format.json { render json: @appetizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appetizers/1
  # PATCH/PUT /appetizers/1.json
  def update
    respond_to do |format|
      if @appetizer.update(appetizer_params)
        format.html { redirect_to @appetizer, notice: 'Appetizer was successfully updated.' }
        format.json { render :show, status: :ok, location: @appetizer }
      else
        format.html { render :edit }
        format.json { render json: @appetizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appetizers/1
  # DELETE /appetizers/1.json
  def destroy
    @appetizer.destroy
    respond_to do |format|
      format.html { redirect_to appetizers_url, notice: 'Appetizer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appetizer
      @appetizer = Appetizer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appetizer_params
      params.require(:appetizer).permit(:title, :description, :price)
    end
end
