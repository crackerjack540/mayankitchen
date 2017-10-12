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

  end

  def brunch
  end

  def dessert
  end

  def lunch
  end

end
