Rails.application.routes.draw do
  devise_for :owners
  devise_for :customers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'farms#index'
  get '/farms' => 'farms#index', as: 'farms'
  get '/farms/new' => 'farms#new', as: 'new_farm'
  post '/farms' => 'farms#create'
  get '/farms/:id' => 'farms#show' , as: 'farm'
  get '/farms/:id/edit' => 'farms#edit', as: 'edit_farm'
  patch '/farms/:id' => 'farms#update'
  delete '/farms/:id' => 'farms#destroy'


  #get '/kopis' => 'kopis#index', as: 'kopis'
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  post '/kopis' => 'kopis#create'
  get '/kopis/:id' => 'kopis#show' , as: 'kopi'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  patch '/kopis/:id' => 'kopis#update'
  delete '/kopis/:id' => 'kopis#destroy'

  get '/roasts/new' => 'roasts#new', as: 'new_roast'
  post '/roasts' => 'roasts#create'
  get '/roasts/:id' => 'roasts#show' , as: 'roast'
  get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roast'
  patch '/roasts/:id' => 'roasts#update'
  delete '/roasts/:id' => 'roasts#destroy'

  get '/orders' => 'orders#index', as: 'orders'
    get '/orders/new' => 'orders#new', as: 'new_order'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show' , as: 'order'
    get '/orders/:id/edit' => 'orders#edit', as: 'edit_order'
  patch '/orders/:id' => 'orders#update'
  delete '/orders/:id' => 'orders#destroy'


  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show' , as:  'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
  patch '/customers/:id' => 'customers#update'
    delete '/customers/:id' => 'customers#destroy'


  get '/reports' => 'reports#index', as: 'reports'

  get '/rights' => 'rights#index', as: 'rights'

  get '/rights/:id' => 'rights#show' , as: 'right'

  get '/rights/:id/edit' => 'rights#edit', as: 'edit_right'
  post '/rights/:id/edit' => 'rights#update'
end