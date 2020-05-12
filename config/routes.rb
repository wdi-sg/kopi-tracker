Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'coffees#index'
  get '/coffees' => 'coffees#index', as: 'coffees'
  get '/coffees/new' => 'coffees#new', as: 'new_coffee'
  post '/coffees' => 'coffees#create'
  get '/coffees/:id' => 'coffees#show', as: 'coffee'


  get '/origins' => 'origins#index', as: 'origins'
  get '/origins/new' => 'origins#new', as: 'new_origin'
  post '/origins' => 'origins#create'
  get '/origins/:id' => 'origins#show', as: 'origin'

  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers/' => 'customers#create'
  get '/customers/:id' => 'customers#show', as: 'customer'

  get 'coffees/:coffee_id/customers' => 'customers#index', as: 'coffees_customer'
  get 'coffees/:coffee_id/customers/new' => 'customers#create', as: 'new_coffees_customer'
  get 'coffees/:coffee_id/customers' => 'customers#create'

  get 'customers/:customer_id/coffees' => 'coffees#index', as: 'customer_coffees'
  get 'customers/:customer_id/coffees/new' => 'coffees#create', as: 'new_customer_coffees'
  get 'customers/:customer_id/coffees' => 'coffees#create'

end
