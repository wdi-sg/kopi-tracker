Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "origins#index"
  resources :origins
  resources :kopis
  resources :orders
  get '/report' => 'reports#index', as: 'report'

end
