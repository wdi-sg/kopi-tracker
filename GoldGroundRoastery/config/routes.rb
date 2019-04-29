Rails.application.routes.draw do

  resources :kopis

  resources :origins

  get 'origins/:origin_id/kopis/new' => 'kopis#new', as: 'new_origin_kopis'

  get 'origins/:origin_id/kopis' => 'kopis#index', as: 'origin_kopis'

  root 'kopis#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end