Rails.application.routes.draw do
  resources :desserts
  resources :brunches
  resources :lunches
  resources :drinks
  resources :enchiladas
  resources :quesadillas
  resources :tacos
  resources :chimichangas
  resources :fajitas
  resources :sides
  resources :seafoods
  resources :porks
  resources :chickens
  resources :steaks
  resources :salads
  resources :nachos
  resources :dips
  resources :soups
  resources :tapas
  resources :appetizers
  resources :dinners
  get 'menu/lunch'

  get 'menu/brunch'

  get 'menu/dinner'

  root 'main#home'

  get 'main/menu'

  get 'main/apply', as: 'apply'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
