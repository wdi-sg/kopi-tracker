Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'origins#index'

  devise_for :users
  resources :kopis
  resources :origins
  resources :roasts
  resources :customers

end
