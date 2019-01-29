Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'origins#index'
  get '/origins' => 'origins#index', as: 'origins'
  get '/origins/new' => 'origins#new', as: 'new_origin'
  post '/origins' => 'origins#create'
  get '/origins/:id' => 'origins#show' , as: 'origin'
  get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  patch '/origins/:id' => 'origins#update'
  delete '/origins/:id' => 'origins#destroy'


  get '/coffees' => 'coffees#index', as: 'coffees'
  get '/coffees/new' => 'coffees#new', as: 'new_coffee'
  post '/coffees' => 'coffees#create'
  get '/coffees/:id' => 'coffees#show' , as: 'coffee'
  get '/coffees/:id/edit' => 'coffees#edit', as: 'edit_coffee'
  patch '/coffees/:id' => 'coffees#update'
  delete '/coffees/:id' => 'coffees#destroy'

  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show' , as: 'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
  patch '/customers/:id' => 'customers#update'
  delete '/customers/:id' => 'customers#destroy'


  get '/origins/:origin_id/coffees' => 'coffees#index', as: 'origin_coffees'
  get '/customers/:customer_id/coffees' => 'coffees#index', as: 'customer_coffees'
  get '/coffees/:coffee_id/customers' => 'customers#index', as: 'coffee_customers'

end