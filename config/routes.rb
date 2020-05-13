Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  get '/kopis' => 'kopis#index', as: 'kopis'
  get '/kopis/new' => 'kopis#new' , as: 'new_kopi'
  get '/kopis/:id' => 'kopis#show', as: 'kopi'
  post '/kopis' => 'kopis#create'

  get '/roasts' => 'roasts#index', as: 'roasts'
  get '/roasts/:name' => 'roasts#show' , as: 'roast'

  get '/orders' => 'orders#index' , as: 'orders'
  get '/orders/:id' => 'orders#show' , as: 'order'

  get '/customers' => 'customers#index' , as: 'customers'
  get '/customers/new' => 'customers#new' , as: 'new_customer'
  get '/customers/:id' => 'customers#show' , as: 'customer'
  post '/customers' => 'customers#create'

end