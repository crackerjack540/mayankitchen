Rails.application.routes.draw do
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
