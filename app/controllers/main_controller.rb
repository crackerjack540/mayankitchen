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
  end

end
