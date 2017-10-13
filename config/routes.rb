Rails.application.routes.draw do

  root 'main#apply'

  get "home" => 'main#home'

  get "dinner" => 'main#dinner'

  get "menu" => 'main#menu'

  get "apply" => 'main#apply'

  get "dessert" => 'main#dessert'

  get "brunch" => 'main#brunch'

  get "lunch" => 'main#lunch'

  get "drinks" => 'main#tequila'

    resources :menu_items


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
