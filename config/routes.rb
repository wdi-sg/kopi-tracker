Rails.application.routes.draw do

  root 'origins#index'
  get '/origins' => 'origins#index', as: 'origins'
  get '/origins/new' => 'origins#new', as: 'new_origin'
  post '/origins' => 'origins#create'
  get '/origins/:id' => 'origins#show' , as: 'origin'
  get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  patch '/origins/:id' => 'origins#update'
  delete '/origins/:id' => 'origins#destroy'


  get '/koffees' => 'koffees#index', as: 'koffees'
  get '/koffees/new' => 'koffees#new', as: 'new_koffee'
  post '/koffees' => 'koffees#create'
  get '/koffees/:id' => 'koffees#show' , as: 'koffee'
  get '/koffees/:id/edit' => 'koffees#edit', as: 'edit_koffee'
  patch '/koffees/:id' => 'koffees#update'
  delete '/koffees/:id' => 'koffees#destroy'


  # get '/parks/:park_id/rangers' => 'rangers#index', as: 'park_rangers'
  # get '/parks/:park_id/rangers/new' => 'rangers#create', as: 'new_park_ranger'
  # post '/parks/:park_id/rangers' => 'rangers#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
