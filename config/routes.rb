Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  ################## KOPI ####################
  root 'kopis#index'

  # Create - Kopi
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  post '/kopis' => 'kopis#create'

  # Show - Kopi
  get '/kopis/:id' => 'kopis#show' , as: 'kopi'

  # Edit - Kopi
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  patch '/kopis/:id' => 'kopis#update'

  # Delete  - Kopi
  delete '/kopis/:id' => 'kopis#destroy'

  ################## ROAST ####################
  # Index - Roast
  get '/roasts' => 'roasts#index', as: 'roasts_index'
 
  # Create - Roast
  get '/roasts/new' => 'roasts#new', as: 'new_roast'
  post '/roasts' => 'roasts#create'

  # Show - Roast
  get '/roasts/:id' => 'roasts#show' , as: 'roast'

  # Edit - Roast
  get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roast'
  patch '/roasts/:id' => 'roasts#update'

  # Delete  - Roast
  delete '/roasts/:id' => 'roasts#destroy'  

  ################## CUSTOMER ####################
  # Show - customers per kopi
  get '/kopi/:id' => 'customers#customers_per_kopi' , as: 'customers_per_kopi'

  # Show - Kopis per customer
  get '/customer/:id' => 'customers#kopis_per_customer' , as: 'kopis_per_customer'
    
  ################## ORDER  ####################
  # Index - Order
  get '/orders' => 'orders#index', as: 'orders_index'

  # Create - Order
  get '/orders/new' => 'orders#new', as: 'new_order'
  post '/orders' => 'orders#create'

  # Show - Order
  get '/orders/:id' => 'orders#show' , as: 'order'
  
end
