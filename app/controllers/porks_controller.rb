class PorksController < ApplicationController
  before_action :set_pork, only: [:show, :edit, :update, :destroy]

  # GET /porks
  # GET /porks.json
  def index
    @porks = Pork.all
  end

  # GET /porks/1
  # GET /porks/1.json
  def show
  end

  # GET /porks/new
  def new
    @pork = Pork.new
  end

  # GET /porks/1/edit
  def edit
  end

  # POST /porks
  # POST /porks.json
  def create
    @pork = Pork.new(pork_params)

    respond_to do |format|
      if @pork.save
        format.html { redirect_to @pork, notice: 'Pork was successfully created.' }
        format.json { render :show, status: :created, location: @pork }
      else
        format.html { render :new }
        format.json { render json: @pork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /porks/1
  # PATCH/PUT /porks/1.json
  def update
    respond_to do |format|
      if @pork.update(pork_params)
        format.html { redirect_to @pork, notice: 'Pork was successfully updated.' }
        format.json { render :show, status: :ok, location: @pork }
      else
        format.html { render :edit }
        format.json { render json: @pork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /porks/1
  # DELETE /porks/1.json
  def destroy
    @pork.destroy
    respond_to do |format|
      format.html { redirect_to porks_url, notice: 'Pork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pork
      @pork = Pork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pork_params
      params.require(:pork).permit(:title, :description, :price)
    end
end
