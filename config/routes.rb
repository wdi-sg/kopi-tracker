Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  get '/kopis' => 'kopis#index', as: 'kopis'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  get '/kopis/:id' => 'kopis#show', as: 'kopi'
  post '/kopis' => 'kopis#create'
  patch '/kopis/:id' => 'kopis#update'
  get '/kopis/new' => 'kopis#new' , as: 'new_kopi'
  delete '/kopis/:id' => 'kopi#destroy'

  # get '/origins' => 'origins#index', as: 'origins'
  # get '/origins/:id' => 'origins#show', as: 'show_origin'
  # get '/origins' => 'origins#new' , as: 'new_origin'
  # get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  # patch '/origins/:id' => 'origin#update'
  # delete '/origins/:id' => 'origin#destroy'

  get '/roasts' => 'roasts#index', as: 'roasts'
  get '/roasts/:name' => 'roasts#show' , as: 'roast'

  get '/orders' => 'orders#index' , as: 'orders'
  get '/orders/:id' => 'orders#show' , as: 'order'
end