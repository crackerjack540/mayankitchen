Rails.application.routes.draw do

  devise_for :models

  root 'main#apply'

  get "home" => 'main#home'

  get "dinner" => 'main#dinner'

  get "menu" => 'main#menu'

  get "apply" => 'main#apply'

  get "dessert" => 'main#dessert'

  get "brunch" => 'main#brunch'

  get "lunch" => 'main#lunch'

  get "drinks" => 'main#tequila'

  get "signup" => 'models#sign_up'

  get "contact" => 'main#contact'

  get "apps" => 'main#appetizer'

  get 'main/download_pdf'

    resources :menu_items


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
