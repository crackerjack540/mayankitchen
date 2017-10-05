Rails.application.routes.draw do
  get 'menu/lunch'

  get 'menu/brunch'

  get 'menu/dinner'

  root 'main#home'

  get 'main/menu'

  get 'main/apply', as: 'apply'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
