Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "kopis#index", as: "home"
  resources :origins
  resources :roasts
  resources :kopis
  resources :customers
end
