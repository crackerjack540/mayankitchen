class QuesadillasController < ApplicationController
  before_action :set_quesadilla, only: [:show, :edit, :update, :destroy]

  # GET /quesadillas
  # GET /quesadillas.json
  def index
    @quesadillas = Quesadillas.all
  end

  # GET /quesadillas/1
  # GET /quesadillas/1.json
  def show
  end

  # GET /quesadillas/new
  def new
    @quesadilla = Quesadillas.new
  end

  # GET /quesadillas/1/edit
  def edit
  end

  # POST /quesadillas
  # POST /quesadillas.json
  def create
    @quesadilla = Quesadillas.new(quesadilla_params)

    respond_to do |format|
      if @quesadilla.save
        format.html { redirect_to @quesadilla, notice: 'Quesadillas was successfully created.' }
        format.json { render :show, status: :created, location: @quesadilla }
      else
        format.html { render :new }
        format.json { render json: @quesadilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quesadillas/1
  # PATCH/PUT /quesadillas/1.json
  def update
    respond_to do |format|
      if @quesadilla.update(quesadilla_params)
        format.html { redirect_to @quesadilla, notice: 'Quesadillas was successfully updated.' }
        format.json { render :show, status: :ok, location: @quesadilla }
      else
        format.html { render :edit }
        format.json { render json: @quesadilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quesadillas/1
  # DELETE /quesadillas/1.json
  def destroy
    @quesadilla.destroy
    respond_to do |format|
      format.html { redirect_to quesadillas_index_url, notice: 'Quesadillas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quesadilla
      @quesadilla = Quesadillas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quesadilla_params
      params.require(:quesadilla).permit(:title, :description, :price)
    end
end
