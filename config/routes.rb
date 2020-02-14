Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :kopis

  root 'kopis#index'


  get "/kopis/:id" => "kopis#show"
  post "/kopis" => "kopis#create"

  get "/customers/:id" => "customers#show"





  # get '/kopis' => 'kopis#index', as: 'kopis'
  # get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  # post '/kopis' => 'kopis#create'
  # get '/kopis/:id' => 'kopis#show' , as: 'kopi'
  # get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  # patch '/kopis/:id' => 'kopis#update'
  # delete '/kopis/:id' => 'kopis#destroy'


  # get '/customers' => 'customers#index', as: 'customers'
  # get '/customers/new' => 'customers#new', as: 'new_ranger'
  # post '/customers' => 'customers#create'
  # get '/customers/:id' => 'customers#show' , as: 'customer'
  # get '/customers/:id/edit' => 'customers#edit', as: 'edit_ranger'
  # patch '/customers/:id' => 'customers#update'
  # delete '/customers/:id' => 'customers#destroy'



end