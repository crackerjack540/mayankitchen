class MainController < ApplicationController
  def home
  end

  def menu
  end

  def apply
  end

  def dinner
     @menu_items = MenuItem.all
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
     @fajitas = Fajita.all
     @chimichangas = Chimichanga.all
     @tacos = Taco.all
     @quesadillas = Quesadilla.all
     @enchiladas = Enchilada.all
     @drinks = Drink.all

  end

  def brunch
    @eggs = Egg.all
    @skillets = Skillet.all
    @griddles = Griddle.all
    @omelettes = Omelette.all
    @brunch_sides = BrunchSide.all
    @drinks = Drink.all
  end

  def dessert
    @desserts = Dessert.all
  end

  def lunch
    @lunches = Lunch.all
    @drinks = Drink.all
  end

  def tequila
    @draft_ds = DraftD.all
    @draft_is = DraftI.all
    @bottle_ds = BottleD.all
    @bottle_is = BottleI.all
    @wine_rs = WineR.all
    @wine_ws = WineW.all
    @sangria_rs = SangriaR.all
    @sangria_ws = SangriaW.all
    @margaritas = Margarita.all
    @tequila_ws = TequilaW.all
    @tequila_rs = TequilaR.all
    @tequila_as = TequilaA.all
    @tequila_ms = TequilaM.all
    @tequila_ps = TequilaP.all
    @tequila_us = TequilaU.all
    @tequila_fs = TequilaF.all
    @vodkas = Vodka.all
    @rums = Rum.all
    @gins = Gin.all
    @bourbons = Bourbon.all
    @scotchs = Scotch.all
    @liqueurs = Liqueur.all
    @drinks = Drink.all

  end

end
