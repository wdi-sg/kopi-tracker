Rails.application.routes.draw do

  root 'origins#index'
  get '/origins' => 'origins#index'
  get '/origins/new' => 'origins#new', as: 'new_origin'
  post '/origins' => 'origins#create'
  get '/origins/:id' => 'origins#show', as: 'origin'
  delete '/origins/:id' => 'origins#destroy'

  get '/kopis' => 'kopis#index'
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  post '/kopis' => 'kopis#create'
  get '/kopis/:id' => 'kopis#show', as: 'kopi'
  delete '/kopis/:id' => 'kopis#destroy'

  get '/origins/:id/kopis' => 'kopis#index', as: 'origin_kopis'
  get '/origins/:id/kopis/new' => 'kopis#new', as: 'new_origin_kopi'
  post '/origins/:id/kopis' => 'kopis#create'

end
