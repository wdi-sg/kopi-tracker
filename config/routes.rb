Rails.application.routes.draw do
  resources :customers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "kopis#index"

  resources :kopis
  resources :origins
end
