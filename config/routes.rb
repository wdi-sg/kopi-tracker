Rails.application.routes.draw do

  devise_for :users
  root 'kopis#index'
  get 'kopis/sort/:order' => 'kopis#sort'
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
  delete '/orders/:id' => 'orders#destroy'

  get 'roasts' => 'roasts#index', as: 'roasts'
  get 'roasts/new' => 'roasts#new', as: 'new_roast'
  post 'roasts' => 'roasts#create'
  get 'roasts/:id' => 'roasts#show', as: 'roast'
  get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roast'
  patch '/roasts/:id' => 'roasts#update'
  delete '/roasts/:id' => 'roasts#destroy'

  get 'customers' => 'customers#index', as: 'customers'
  get 'customers/new' => 'customers#new', as: 'new_customer'
  post 'customers' => 'customers#create'
  get 'customers/:id' => 'customers#show', as: 'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
  patch '/customers/:id' => 'customers#update'
  get 'customers/sort/:order' => 'customers#sort', as: 'sort_customer'

end