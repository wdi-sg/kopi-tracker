Rails.application.routes.draw do
  devise_for :customers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'origins#home'
  resources :origins
  resources :kopis

  get '/roasts/:id' => 'roasts#show', as: 'roast'
  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/:id' => 'customers#show', as: 'customer'
  get '/customers/:customer_id/kopis/:id' => 'kopis#show', as: 'customer_kopi'
  post '/customers/:customer_id/kopis/:id' => 'customers#customer_kopi', as: 'manage_customer_kopi'



end