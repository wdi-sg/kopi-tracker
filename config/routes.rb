Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'kopis#index'
  get '/kopis' => 'kopis#index', as: 'kopis'
  get '/kopis/new' => 'kopis#new', as: 'new_kopis'
  post '/kopis' => 'kopis#create'
  get '/kopis/:id' => 'kopis#show' , as: 'kopi'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopis'
  patch '/kopis/:id' => 'kopis#update'
  delete '/kopis/:id' => 'kopis#destroy'

  get '/roasts' => 'roasts#index', as: 'roasts'
  get '/roasts/new' => 'roasts#new', as: 'new_roasts'
  post '/roasts' => 'roasts#create'
  get '/roasts/:id' => 'roasts#show' , as: 'roast'
  get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roasts'
  patch '/roasts/:id' => 'roasts#update'
  delete '/roasts/:id' => 'roasts#destroy'

  get '/kopis/:park_id/roasts' => 'roasts#index', as: 'kopi_roasts'
  get '/kopis/:park_id/roasts/new' => 'roasts#create', as: 'new_kopi_roast'
  post '/kopis/:park_id/roasts' => 'roasts#create'


end