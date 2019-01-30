Rails.application.routes.draw do

  devise_for :users
  root 'koopis#index'
  get '/koopis' => 'koopis#index', as: 'koopis'
  get '/koopis/new' => 'koopis#new', as: 'new_koopi'
  post '/koopis' => 'koopis#create'
  get '/koopis/:id' => 'koopis#show' , as: 'koopi'
  get '/koopis/:id/edit' => 'koopis#edit', as: 'edit_koopi'
  patch '/koopis/:id' => 'koopis#update'
  delete '/koopis/:id' => 'koopis#destroy'


  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show' , as: 'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
  patch '/customers/:id' => 'customers#update'
  delete '/customers/:id' => 'customers#destroy'


  # get '/koopis/:koopi_id/customers' => 'customers#index', as: 'koopis_customers'
  # get '/customers/:customer_id/koopis' => 'koopis#index', as: 'customers_koopis'



end
