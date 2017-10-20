class MainController < ApplicationController
  def home
  end

  def menu
  end

  def apply
  end

  def dinner
     @menu_items = MenuItem.all
     @menu_items = MenuItem.order(created_at: :asc)
    
     @appetizers = Appetizer.all
     @appetizers = Appetizer.order(created_at: :asc)

     @tapas = Tapa.all
     @tapas = Tapa.order(created_at: :asc)

     @soups = Soup.all
     @soups = Soup.order(created_at: :asc)

     @dips = Dip.all
     @dips = Dip.order(created_at: :asc)

     @nachos = Nacho.all
     @nachos = Nacho.order(created_at: :asc)

     @salads = Salad.all
     @salads = Salad.order(created_at: :asc)

     @steaks = Steak.all
     @steaks = Steak.order(created_at: :asc)

     @chickens = Chicken.all
     @chickens = Chicken.order(created_at: :asc)

     @porks = Pork.all
     @porks = Pork.order(created_at: :asc)

     @seafoods = Seafood.all
     @seafoods = Seafood.order(created_at: :asc)

     @sides = Side.all
     @sides = Side.order(created_at: :asc)

     @fajitas = Fajita.all
     @fajitas = Fajita.order(created_at: :asc)

     @chimichangas = Chimichanga.all
     @chimichangas = Chimichanga.order(created_at: :asc)
     
     @tacos = Taco.all
     @tacos = Taco.order(created_at: :asc)

     @quesadillas = Quesadilla.all
     @quesadillas = Quesadilla.order(created_at: :asc)

     @enchiladas = Enchilada.all
     @enchiladas = Enchilada.order(created_at: :asc)

     @drinks = Drink.all
     @drinks = Drink.order(created_at: :asc)

  end

  def brunch
    @eggs = Egg.all
    @eggs = Egg.order(created_at: :asc)

    @skillets = Skillet.all
    @skillets = Skillet.order(created_at: :asc)

    @griddles = Griddle.all
    @griddles = Griddle.order(created_at: :asc)

    @omelettes = Omelette.all
    @omelettes = Omelette.order(created_at: :asc)

    @brunch_sides = BrunchSide.all
    @brunch_sides = BrunchSide.order(created_at: :asc)
    
    @drinks = Drink.all
    @drinks = Drink.order(created_at: :asc)
  end

  def dessert
    @desserts = Dessert.all
    @desserts = Dessert.order(created_at: :asc)
  end

  def lunch
    @lunches = Lunch.all
    @lunches = Lunch.order(created_at: :asc)

    @drinks = Drink.all
    @drinks = Drink.order(created_at: :asc)
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
