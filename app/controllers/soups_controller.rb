class SoupsController < ApplicationController
  before_action :set_soup, only: [:show, :edit, :update, :destroy]

  # GET /soups
  # GET /soups.json
  def index
    @soups = Soup.all
  end

  # GET /soups/1
  # GET /soups/1.json
  def show
  end

  # GET /soups/new
  def new
    @soup = Soup.new
  end

  # GET /soups/1/edit
  def edit
  end

  # POST /soups
  # POST /soups.json
  def create
    @soup = Soup.new(soup_params)

    respond_to do |format|
      if @soup.save
        format.html { redirect_to @soup, notice: 'Soup was successfully created.' }
        format.json { render :show, status: :created, location: @soup }
      else
        format.html { render :new }
        format.json { render json: @soup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soups/1
  # PATCH/PUT /soups/1.json
  def update
    respond_to do |format|
      if @soup.update(soup_params)
        format.html { redirect_to @soup, notice: 'Soup was successfully updated.' }
        format.json { render :show, status: :ok, location: @soup }
      else
        format.html { render :edit }
        format.json { render json: @soup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soups/1
  # DELETE /soups/1.json
  def destroy
    @soup.destroy
    respond_to do |format|
      format.html { redirect_to soups_url, notice: 'Soup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soup
      @soup = Soup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soup_params
      params.require(:soup).permit(:title, :description, :price)
    end
end
