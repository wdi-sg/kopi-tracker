Rails.application.routes.draw do

  devise_for :users
  root 'kopis#index'
  get 'kopis' => 'kopis#index', as: 'kopis'
  get 'kopis/new' => 'kopis#new', as: 'new_kopi'
  post 'kopis' => 'kopis#create'
  get '/kopis/:id' => 'kopis#show', as: 'kopi'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  patch '/kopis/:id' => 'kopis#update'
  delete '/kopis/:id' => 'kopis#destroy'

  get 'orders' => 'orders#index', as: 'orders'
  get 'orders/new' => 'orders#new', as: 'new_order'
  post 'orders' => 'orders#create'
  get 'orders/:id' => 'orders#show', as: 'order'

  get 'roasts' => 'roasts#index', as: 'roasts'
  get 'roasts/new' => 'roasts#new', as: 'new_roast'
  post 'roasts' => 'roasts#create'
  get 'roasts/:id' => 'roasts#show', as: 'roast'
  get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roast'
  patch '/roasts/:id' => 'roasts#update'
  delete '/roasts/:id' => 'roasts#destroy'

end
 