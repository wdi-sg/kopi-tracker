Rails.application.routes.draw do

  devise_for :customers
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :kopis
  root 'kopis#index'

  resources :origins

  resources :orders

  resources :customers
end