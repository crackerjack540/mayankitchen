class EnchiladasController < ApplicationController
  before_action :set_enchilada, only: [:show, :edit, :update, :destroy]

  # GET /enchiladas
  # GET /enchiladas.json
  def index
    @enchiladas = Enchiladas.all
  end

  # GET /enchiladas/1
  # GET /enchiladas/1.json
  def show
  end

  # GET /enchiladas/new
  def new
    @enchilada = Enchiladas.new
  end

  # GET /enchiladas/1/edit
  def edit
  end

  # POST /enchiladas
  # POST /enchiladas.json
  def create
    @enchilada = Enchiladas.new(enchilada_params)

    respond_to do |format|
      if @enchilada.save
        format.html { redirect_to @enchilada, notice: 'Enchiladas was successfully created.' }
        format.json { render :show, status: :created, location: @enchilada }
      else
        format.html { render :new }
        format.json { render json: @enchilada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enchiladas/1
  # PATCH/PUT /enchiladas/1.json
  def update
    respond_to do |format|
      if @enchilada.update(enchilada_params)
        format.html { redirect_to @enchilada, notice: 'Enchiladas was successfully updated.' }
        format.json { render :show, status: :ok, location: @enchilada }
      else
        format.html { render :edit }
        format.json { render json: @enchilada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enchiladas/1
  # DELETE /enchiladas/1.json
  def destroy
    @enchilada.destroy
    respond_to do |format|
      format.html { redirect_to enchiladas_index_url, notice: 'Enchiladas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enchilada
      @enchilada = Enchiladas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enchilada_params
      params.require(:enchilada).permit(:title, :description, :price)
    end
end
