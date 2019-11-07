Rails.application.routes.draw do
  devise_for :users

  root to: 'kopis#index'
  
  resources :kopis
  resources :origins
  resources :roasts
  resources :customers



  get '/origins/:origin_id/kopis' => 'kopis#index', as: 'origin_kopis'
  get '/origins/:origin_id/kopis/new' => 'kopis#create', as: 'new_origin_kopi'
  post '/origins/:origin_id/kopis' => 'kopis#create'

  get '/kopis/:kopi_id/customers' => 'customers#index', as: 'kopi_customers'
  get '/kopis/:kopi_id/customers/new' => 'customers#create', as: 'new_kopi_customer'
  post '/kopis/:kopi_id/customers' => 'customers#create'

  get '/customers/:customer_id/kopis' => 'kopis#index', as: 'customer_kopis'
  get '/customers/:customer_id/kopis/new' => 'kopis#create', as: 'new_customer_kopis'
  post '/customers/:customer_id/kopis' => 'kopis#create'

end
