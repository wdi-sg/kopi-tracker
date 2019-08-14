Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'

  resources :kopis
  resources :origins
  resources :orders

  get 'origins/:origin_id/new' => 'kopis#new', as: 'new_origin_kopi'

end
