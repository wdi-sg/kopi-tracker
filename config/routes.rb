Rails.application.routes.draw do
  root 'kopi#index'
  get '/kopi' => 'kopi#index', as: 'kopi'
  get '/kopi/new' => 'kopi#new', as: 'new_kopi'
  post '/kopi' => 'kopi#create'
  get '/kopi/:id' => 'kopi#show' , as: 'kopi'
  get '/kopi/:id/edit' => 'kopi#edit', as: 'edit_kopi'
  patch '/kopi/:id' => 'kopi#update'
  delete '/kopi/:id' => 'kopi#destroy'

  get '/origin' => 'origin#index', as: 'origin'
  get '/origin/new' => 'origin#new', as: 'new_origin'
  post '/origin' => 'origin#create'
  get '/origin/:id' => 'origin#show' , as: 'origin'
  get '/origin/:id/edit' => 'origin#edit', as: 'edit_origin'
  patch '/origin/:id' => 'origin#update'
  delete '/origin/:id' => 'origin#destroy'

  get '/origin/:origin_id/kopi' => 'kopi#index', as: 'origin_kopi'
  get '/origin/:origin_id/kopi/new' => 'kopi#create', as: 'new_origin_kopi'
  post '/origin/:origin_id/kopi' => 'kopi#create'

end