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


  get '/origins/:origin_id/koffees' => 'koffees#index', as: 'origin_koffees'
  get '/origins/:origin_id/koffees/new' => 'koffees#create', as: 'new_origin_koffee'
  post '/origins/:origin_id/koffees' => 'koffees#create'

  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show', as: 'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
  patch '/customers/:id' => 'customers#update'
  delete '/customers/:id' => 'customers#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
