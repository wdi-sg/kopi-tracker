Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'

  # routing for kopis #
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  get '/kopis/:id' => 'kopis#show' , as: 'kopi'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'

  patch '/kopis/:id' => 'kopis#update'
  post '/kopis' => 'kopis#create'
  delete '/kopis/:id' => 'kopis#destroy'

  # routing for orders #
  get 'orders' => 'orders#index', as: 'orders'

  get '/orders/new' => 'orders#new', as: 'new_order'
  get '/orders/:id' => 'orders#show' , as: 'order'
  get '/orders/:id/edit' => 'orders#edit', as: 'edit_order'

  patch '/orders/:id' => 'orders#update'
  post '/orders' => 'orders#create'
  delete '/orders/:id' => 'orders#destroy'

  # routing for customers #
  get 'customers' => 'customers#index', as: 'customers'

  get '/customers/new' => 'customers#new', as: 'new_customer'
  get '/customers/:id' => 'customers#show' , as: 'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'

  patch '/customers/:id' => 'customers#update'
  post '/customers' => 'customers#create'
  delete '/customers/:id' => 'customers#destroy'

  # routing for users kopi bookmark#
  get '/kopi_bookmarks/' => 'bookmarks#show_kopi' , as: 'kopi_bookmark'

  get '/kopi_bookmarks/edit' => 'bookmarks#edit_kopi', as: 'edit_kopi_bookmark'
  patch '/kopi_bookmarks/' => 'bookmarks#update_kopi'

  # routing for users roast bookmark#
  get '/roast_bookmarks/' => 'bookmarks#show_roast' , as: 'roast_bookmark'

  get '/roast_bookmarks/edit' => 'bookmarks#edit_roast', as: 'edit_roast_bookmark'
  patch '/roast_bookmarks/' => 'bookmarks#update_roast'
end