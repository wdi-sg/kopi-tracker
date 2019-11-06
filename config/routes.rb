Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  post '/kopis' => 'kopis#create'

  get '/kopis/:id' => 'kopis#show' , as: 'kopi'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  patch '/kopis/:id' => 'kopis#update'
  delete '/kopis/:id' => 'kopis#destroy'

  get '/origins' => 'origins#index', as: 'origins'
  get '/origins/new' => 'origins#new', as: 'new_origin'
  post '/origins' => 'origins#create'
  get '/origins/:id' => 'origins#show' , as: 'origin'
  get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  patch '/origins/:id' => 'origins#update'
  delete '/origins/:id' => 'origins#destroy'


  get '/origins/:origin_id/kopis' => 'kopis#index', as: 'origin_kopis'
  get '/origins/:origin_id/kopis/new' => 'kopis#create', as: 'new_origin_kopi'
  post '/origins/:origin_id/kopis' => 'kopis#create'



  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show' , as: 'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
  patch '/customers/:id' => 'customers#update'
  delete '/customers/:id' => 'customers#destroy'


  get '/kopis/:kopi_id/customers' => 'customers#index', as: 'kopi_customers'
  get '/kopis/:kopi_id/customers/new' => 'customers#create', as: 'new_kopi_customer'
  post '/kopis/:kopi_id/customers' => 'customers#create'

  get '/customers/:customer_id/kopis' => 'kopis#index', as: 'customer_kopis'
  get '/customers/:customer_id/kopis/new' => 'kopis#create', as: 'new_customer_kopis'
  post '/customers/:customer_id/kopis' => 'kopis#create'

end
