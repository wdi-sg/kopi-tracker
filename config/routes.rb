Rails.application.routes.draw do
  resources :customers
  devise_for :users
  resources :kopis
  root 'kopis#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
