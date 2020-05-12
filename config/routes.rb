Rails.application.routes.draw do

  devise_for :users
root 'origins#index'
get '/origins' => 'origins#index'
get '/origins/new' => 'origins#new', as: 'new_origin'
post '/origins' => 'origins#create'
get '/origins/:id' => 'origins#show', as: 'origin'
get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
patch '/origins/:id' => 'origins#update'
delete '/origins/:id' => 'origins#destroy'

root 'kopis#index'
get '/kopis' => 'kopis#index', as: 'kopis'
get '/kopis/new' => 'kopis#new', as: 'new_kopi'
get '/kopis/:id' => 'kopis#show', as: 'kopi'
post '/kopis' => 'kopis#create'
get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
patch '/kopis/:id' => 'kopis#update'
delete '/kopis/:id/' => 'kopis#destroy'



end