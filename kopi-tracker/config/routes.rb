Rails.application.routes.draw do
  devise_for :customers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "kopis#index"
  resources :kopis
  resources :farms
  resources :roasts
  resources :orders
end