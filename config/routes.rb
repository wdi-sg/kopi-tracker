Rails.application.routes.draw do
  devise_for :users
  resources :customers
  root "kopis#index"
  resources :kopis
  resources :origins
end
