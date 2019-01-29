Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'coffeelists#index'

  resources :coffeelists
  resources :orders
  resources :origins
  resources :roasts, only: [:show]

end
