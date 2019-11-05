Rails.application.routes.draw do
  devise_for :users
  root 'kopis#home'
  get 'roasts/index' => 'roasts#index'
  get 'roasts/:id' => 'roasts#show', as: 'roast'
  resources :origins
  resources :kopis
  resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end