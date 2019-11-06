Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  get '/kopis' => 'kopis#index', as: 'kopis'
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  post '/kopis' => 'kopis#create'
  get '/kopis/:id' => 'kopis#show' , as: 'kopi'
  # get '/parks/:id/edit' => 'parks#edit', as: 'edit_park'
  # patch '/parks/:id' => 'parks#update'
  # delete '/parks/:id' => 'parks#destroy'

  root 'origins#index'
  get '/origins' => 'origins#index', as: 'origins'
  get '/origins/new' => 'origins#new', as: 'new_origin'
  post '/origins' => 'origins#create'
  get '/origins/:id' => 'origins#show' , as: 'origin'
  # get '/parks/:id/edit' => 'parks#edit', as: 'edit_park'
  # patch '/parks/:id' => 'parks#update'
  # delete '/parks/:id' => 'parks#destroy'
end
