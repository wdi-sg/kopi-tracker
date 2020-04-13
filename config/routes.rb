Rails.application.routes.draw do
  devise_for :customers
  devise_for :users
  root 'kopis#home'
  resources :roasts
  resources :origins
  resources :kopis
  resources :orders
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end