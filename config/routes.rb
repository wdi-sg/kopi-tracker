Rails.application.routes.draw do

  devise_for :users
  root 'kopis#index'


  get '/origins/:origin_id/kopis' => 'kopis#index', as: 'origin_kopis'
  get '/origins/:origin_id/kopis/new' => 'kopis#new', as: 'new_origin_kopi'
  post '/origins/:origin_id/kopis' => 'kopis#create'

	resources :origins, :kopis, :customers

  # get '/origins' => 'origins#index'
  # get '/origins/new' => 'origins#new', as: 'new_origin'
  # post '/origins' => 'origins#create'
  # get '/origins/:id' => 'origins#show', as: 'origin'
  # delete '/origins/:id' => 'origins#destroy'

  # get '/kopis' => 'kopis#index'
  # get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  # post '/kopis' => 'kopis#create'
  # get '/kopis/:id' => 'kopis#show', as: 'kopi'
  # delete '/kopis/:id' => 'kopis#destroy'



end


