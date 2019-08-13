Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'origins#index'
  resources :origins
  resources :kopis

  get '/origins/:origin_id/kopis' => 'kopis#index', as: 'origin_kopis'
  get '/origins/:origin_id/kopis/new' => 'kopis#create', as: 'new_origin_kopi'
  post '/origins/:origin_id/kopis' => 'kopis#add', as: 'add_origin_kopi'
  #get '/origins/:id/kopis/:id' => 'kopis#add', as: 'add_origin_kopi'




end