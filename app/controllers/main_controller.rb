class MainController < ApplicationController
  def home
    set_meta_tags title: 'Home',
                  site: 'Mayan Kitchen',
                  reverse: true,
                  description: '',
                  keywords: 'Latin, Cuisine, Tequila, Bar, Brunch, Dinner, Lunch, Dessert'
  end

  def menu
    set_meta_tags title: 'Menu',
                  site: 'Mayan Kitchen',
                  reverse: true,
                  description: '',
                  keywords: 'Latin, Cuisine, Tequila, Bar, Brunch, Dinner, Lunch, Dessert'

  end

  def apply
      set_meta_tags title: 'Apply',
                  site: 'Mayan Kitchen',
                  reverse: true,
                  description: '',
                  keywords: 'Latin, Cuisine, Tequila, Bar, Churros, Sweet, Cake, Cheesecake, Chocolate'

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

    set_meta_tags title: 'Dinner',
                  site: 'Mayan Kitchen',
                  reverse: true,
                  description: '',
                  keywords: 'Latin, Cuisine, Tequila, Bar, Tapas, Soup, Queso, Nachos, Salad, Steak, Chicken, Pork, Rice, Picadillo, Salsa, Fajitas, Quesadillas, Chimichangas Enchiladas, Tacos'


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

    set_meta_tags title: 'Brunch',
                  site: 'Mayan Kitchen',
                  reverse: true,
                  description: '',
                  keywords: 'Latin, Cuisine, Tequila, Bar, Eggs, Skillets, Griddles, Omelettes, Bacon, Ham, Pancakes, Waffles'

  end

  def dessert
    @desserts = Dessert.all
    @desserts = Dessert.order(created_at: :asc)

    set_meta_tags title: 'Dessert',
                  site: 'Mayan Kitchen',
                  reverse: true,
                  description: '',
                  keywords: 'Latin, Cuisine, Tequila, Bar, Sandwich, Wrap, Burger, Tacos, Salad'

  end

  def lunch
    @lunches = Lunch.all
    @lunches = Lunch.order(created_at: :asc)

    @drinks = Drink.all
    @drinks = Drink.order(created_at: :asc)

    set_meta_tags title: 'Lunch',
                  site: 'Mayan Kitchen',
                  reverse: true,
                  description: '',
                  keywords: 'Latin, Cuisine, Tequila, Bar, Lunch'

  end

  def tequila
    @draft_ds = DraftD.all
    @draft_ds = DraftD.order(created_at: :asc)

    @draft_is = DraftI.all
    @draft_is = DraftI.order(created_at: :asc)

    @bottle_ds = BottleD.all
    @bottle_ds = BottleD.order(created_at: :asc)

    @bottle_is = BottleI.all
    @bottle_is = BottleI.order(created_at: :asc)

    @wine_rs = WineR.all
    @wine_rs = WineR.order(created_at: :asc)

    @wine_ws = WineW.all
    @wine_ws = WineW.order(created_at: :asc)

    @sangria_rs = SangriaR.all
    @sangria_rs = SangriaR.order(created_at: :asc)

    @sangria_ws = SangriaW.all
    @sangria_ws = SangriaW.order(created_at: :asc)

    @margaritas = Margarita.all
    @margaritas = Margarita.order(created_at: :asc)
    
    @tequila_ws = TequilaW.all
    @tequila_ws = TequilaW.order(created_at: :asc)

    @tequila_rs = TequilaR.all
    @tequila_rs = TequilaR.order(created_at: :asc)

    @tequila_as = TequilaA.all
    @tequila_as = TequilaA.order(created_at: :asc)

    @tequila_ms = TequilaM.all
    @tequila_ms = TequilaM.order(created_at: :asc)

    @tequila_ps = TequilaP.all
    @tequila_ps = TequilaP.order(created_at: :asc)

    @tequila_us = TequilaU.all
    @tequila_us = TequilaU.order(created_at: :asc)

    @tequila_fs = TequilaF.all
    @tequila_fs = TequilaF.order(created_at: :asc)

    @vodkas = Vodka.all
    @vodkas = Vodka.order(created_at: :asc)

    @rums = Rum.all
    @rums = Rum.order(created_at: :asc)

    @gins = Gin.all
    @gins = Gin.order(created_at: :asc)

    @bourbons = Bourbon.all
    @bourbons = Bourbon.order(created_at: :asc)

    @scotchs = Scotch.all
    @scotchs = Scotch.order(created_at: :asc)

    @liqueurs = Liqueur.all
    @liqueurs = Liqueur.order(created_at: :asc)
    
    @drinks = Drink.all
    @drinks = Drink.order(created_at: :asc)

    set_meta_tags title: 'Tequila',
                  site: 'Mayan Kitchen',
                  reverse: true,
                  description: '',
                  keywords: 'Latin, Cuisine, Tequila, Bar, Liqueur, Beer, Wine, Scotch, Sangria, Margarita, Vodka, Rum, Gin'



  end

end
