Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'

  resources :kopis
  resources :origins
  resources :orders

  get '/origins/:origin_id/new' => 'kopis#new', as: 'new_origin_kopi'

  get '/reports' => 'reports#index', as: 'reports'
  get '/reports/kopi/:kopi_id' => 'reports#kopi', as: 'reports_kopi'
  get '/reports/origin/:origin_id' => 'reports#origin', as: 'reports_origin'
end
