Rails.application.routes.draw do

  devise_for :users
  root 'kopis#index'

  resources :kopis, :roasts, :origins, :customers

  # get '/kopis' => 'kopis#index', as: 'kopis'
  # get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  # post '/kopis' => 'kopis#create'
  # get '/kopis/:id' => 'kopis#show' , as: 'kopi'
  # get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  # patch '/kopis/:id' => 'kopis#update'
  # delete '/kopis/:id' => 'kopis#destroy'


  # get '/origins' => 'origins#index', as: 'origins'
  # get '/origins/new' => 'origins#new', as: 'new_origin'
  # post '/origins' => 'origins#create'
  # get '/origins/:id' => 'origins#show' , as: 'origin'
  # get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  # patch '/origins/:id' => 'origins#update'
  # delete '/origins/:id' => 'origins#destroy'

  # get '/kopis/:kopi_id/origins' => 'origins#index', as: 'kopi_origins'
  # get '/kopis/:kopi_id/origins/new' => 'origins#new', as: 'new_kopi_origin'
  # post '/kopis/:kopi_id/origins' => 'origins#create'

  # get '/kopis/:kopi_id/customers' => 'customers#index', as: 'kopi_customers'
  # get '/kopis/:kopi_id/customers/new' => 'customers#create', as: 'new_kopi_ranger'
  # post '/kopis/:kopi_id/customers' => 'customers#create'

  # get '/customers/:customer_id/kopis' => 'kopis#index', as: 'customer_kopis'
  # get '/customers/:customer_id/kopis/new' => 'kopis#create', as: 'new_customer_kopis'
  # post '/customers/:customer_id/kopis' => 'kopis#create'

end