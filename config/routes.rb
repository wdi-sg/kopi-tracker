Rails.application.routes.draw do
  get 'report/index'
  resources :roasts
  resources :orders
  resources :kopis
  resources :origins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
