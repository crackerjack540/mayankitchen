Rails.application.routes.draw do

  resources :menu_items
  resources :appetizers
  resources :tapas
  resources :soups
  resources :dips
  resources :nachos
  resources :salads
  resources :steaks
  resources :chickens
  resources :porks
  resources :seafoods
  resources :sides
  resources :fajitas
  resources :chimichangas
  resources :tacos
  resources :quesadillas
  resources :enchiladas

  get 'main/dinner'

  root 'main#apply'

  get 'main/menu'

  get 'main/apply', as: 'apply'

  get 'main/dessert'

  get 'main/brunch'

  get 'main/lunch'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
