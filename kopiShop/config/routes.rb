Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :kopis
  resources :origins
  resources :orders
  resources :reports
  resources :customers
  root to: 'kopis#index'
end