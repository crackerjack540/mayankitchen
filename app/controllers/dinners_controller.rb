class DinnersController < ApplicationController

  # GET /dinners
  # GET /dinners.json
  def index
    @dinners = Dinner.all
    @appetizers = Appetizer.all
    @tapas = Tapa.all
    @soups = Soup.all
    @dips = Dip.all
    @nachos = Nacho.all
    @salads = Salad.all
    @steaks = Steak.all
    @chickens = Chicken.all
    @porks = Pork.all
    @seafoods = Seafood.all
    @sides = Side.all
    @fajitas = Fajitas.all
    @chimichangas = Chimichangas.all
    @tacos = Taco.all
    @quesadillas = Quesadillas.all
    @enchiladas = Enchiladas.all
    @drinks = Drink.all
  end


  # GET /dinners/1
  # GET /dinners/1.json
  def show
    @appetizers = Appetizer.all
    @tapas = Tapa.all
    @soups = Soup.all
    @dips = Dip.all
    @nachos = Nacho.all
    @salads = Salad.all
    @steaks = Steak.all
    @chickens = Chicken.all
    @porks = Pork.all
    @seafoods = Seafood.all
    @sides = Side.all
    @fajitas = Fajitas.all
    @chimichangas = Chimichangas.all
    @tacos = Taco.all
    @quesadillas = Quesadillas.all
    @enchiladas = Enchiladas.all
    @drinks = Drink.all

  end

  # GET /dinners/new
  def new
    @dinner = Dinner.new
  end

  # GET /dinners/1/edit
  def edit
  end

  # POST /dinners
  # POST /dinners.json
  def create
    @dinner = Dinner.new(dinner_params)

    respond_to do |format|
      if @dinner.save
        format.html { redirect_to @dinner, notice: 'Dinner was successfully created.' }
        format.json { render :show, status: :created, location: @dinner }
      else
        format.html { render :new }
        format.json { render json: @dinner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dinners/1
  # PATCH/PUT /dinners/1.json
  def update
    respond_to do |format|
      if @dinner.update(dinner_params)
        format.html { redirect_to @dinner, notice: 'Dinner was successfully updated.' }
        format.json { render :show, status: :ok, location: @dinner }
      else
        format.html { render :edit }
        format.json { render json: @dinner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinners/1
  # DELETE /dinners/1.json
  def destroy
    @dinner.destroy
    respond_to do |format|
      format.html { redirect_to dinners_url, notice: 'Dinner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
end
