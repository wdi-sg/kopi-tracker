Rails.application.routes.draw do
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

end