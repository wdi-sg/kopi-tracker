Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :kopis

  root 'kopis#index'

  get '/kopis' => 'kopis#index', as: 'kopis'
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  post '/kopis' => 'kopis#create'
  get '/kopis/:id' => 'kopis#show' , as: 'kopi'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  patch '/kopis/:id' => 'kopis#update'
  delete '/kopis/:id' => 'kopis#destroy'

  get '/origins' => 'origins#index', as: 'origins'
  get '/origins/new' => 'origins#new', as: 'new_origin'
  post '/origins' => 'origins#create'
  get '/origins/:id' => 'origins#show' , as: 'origin'
  get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  patch '/origins/:id' => 'origins#update'
  delete '/origins/:id' => 'origins#destroy'


  # get '/kopis/:kopi_id/origins' => 'origins#index', as: 'park_rangers'
  # get '/kopis/:kopi_id/origins/new' => 'origins#create', as: 'new_park_ranger'
  # post '/kopis/:kopi_id/origins' => 'origins#create'

  # get '/origins/:kopi_id/kopis' => 'kopis#index', as: 'ranger_kopis'
  # get '/origins/:kopi_id/kopis/new' => 'kopis#create', as: 'new_ranger_kopis'
  # post '/origins/:kopi_id/kopis' => 'kopis#create'
end
