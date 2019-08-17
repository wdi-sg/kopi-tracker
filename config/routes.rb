Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'kopis#index'
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  get '/kopi/:id' => 'kopis#show', as: 'kopi'
  get '/kopi/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  patch 'kopis/:id' => 'kopis#update'
  post '/kopis' => 'kopis#create'
  delete '/kopis/:id' => 'kopis#destroy'

end


# root 'parks#index'
# get '/parks' => 'parks#index', as: 'parks'
# get '/parks/new' => 'parks#new', as: 'new_park'
# post '/parks' => 'parks#create'
# get '/parks/:id' => 'parks#show' , as: 'park'
# get '/parks/:id/edit' => 'parks#edit', as: 'edit_park'
# patch '/parks/:id' => 'parks#update'
# delete '/parks/:id' => 'parks#destroy'
#
#
# get '/rangers' => 'rangers#index', as: 'rangers'
# get '/rangers/new' => 'rangers#new', as: 'new_ranger'
# post '/rangers' => 'rangers#create'
# get '/rangers/:id' => 'rangers#show' , as: 'ranger'
# get '/rangers/:id/edit' => 'rangers#edit', as: 'edit_ranger'
# patch '/rangers/:id' => 'rangers#update'
# delete '/rangers/:id' => 'rangers#destroy'
#
#
# get '/parks/:park_id/rangers' => 'rangers#index', as: 'park_rangers'
# get '/parks/:park_id/rangers/new' => 'rangers#create', as: 'new_park_ranger'
# post '/parks/:park_id/rangers' => 'rangers#create'
