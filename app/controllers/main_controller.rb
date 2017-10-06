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

  end

  def brunch
  end

  def dessert
  end

  def lunch
  end

end
