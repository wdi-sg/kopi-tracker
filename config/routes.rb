Rails.application.routes.draw do
  devise_for :customers
  devise_for :users
  get '/report', to: 'report#index'
  resources :roasts
  resources :orders
  resources :kopis
  resources :origins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "report#index"
end