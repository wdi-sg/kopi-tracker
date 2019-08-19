Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  get '/kopis' => 'kopis#index', as: 'kopis'
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  post '/kopis' => 'kopis#create'
  get '/kopis/:id' => 'kopis#show', as: 'kopi'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  patch '/kopis/:id' => 'kopis#update'
  delete '/kopis/:id' => 'kopis#destroy'

  get '/roasts' => 'roasts#index', as: 'roasts'

  get '/origins' => 'origins#index', as: 'origins'

  get '/orders' => 'orders#index', as: 'orders'
  get '/orders/new' => 'orders#new', as: 'new_order'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show', as: 'order'
  get '/orders/:id/edit' => 'orders#edit', as: 'edit_order'
  patch '/orders/:id' => 'orders#update'
  delete '/orders/:id' => 'orders#destroy'

  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show', as: 'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
  patch '/customers/:id' => 'customers#update'
  delete '/customers/:id' => 'customers#destroy'

end