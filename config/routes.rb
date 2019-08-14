Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "kopis#index"
  devise_for :users
  resources :origins
  resources :kopis
  resources :orders
  resources :roasts
  get '/report' => 'reports#index', as: 'report'
  get '/report/by_kopi' => 'reports#kopi'
  get '/report/by_origin' => 'reports#origin'
  get '/report/onlyadmin' => 'reports#onlyadmin'

end
