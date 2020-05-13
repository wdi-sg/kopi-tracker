Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :kopis do
    resources :customers
  end
  resources :customers do
    resources :kopis
  end

  resources :orders

  root 'kopis#index'
end