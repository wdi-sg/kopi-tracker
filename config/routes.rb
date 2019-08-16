Rails.application.routes.draw do

  devise_for :users


  root 'kopis#index', as: 'home'


  resources :kopis
  resources :origins
  resources :roasts
  resources :orders

end