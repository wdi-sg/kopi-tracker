Rails.application.routes.draw do
  get 'roasts/index'
  get 'roasts/new'
  get 'roasts/show'
  resources :origins
  resources :kopis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end