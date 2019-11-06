Rails.application.routes.draw do
  devise_for :users

  root "kopis#index"
  resources :kopis
  resources :origins
end
