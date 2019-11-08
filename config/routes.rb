Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "kopis#index"
  resources :kopis
  resources :origins
  resources :orders
  resources :customers

  # get '/origins/:origins_id/kopis' => 'kopis#index', as: 'origin_kopis'
  # get '/origins/:origins_id/kopis/new' => 'kopis#create', as: 'new_origin_kopi'
  # post '/origins/:origins_id/kopis' => 'kopis#create'
end
