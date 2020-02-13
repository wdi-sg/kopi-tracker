Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'roasts#index'

  get '/orders' => 'orders#index'
  get '/orders/:id' => 'orders#show', as: 'order'
  get '/report' => 'orders#show'

  get '/kopis/new' => 'kopis#new', as: 'kopi_new'
  post '/kopis' => 'kopis#create'
  get '/kopis/:id' => 'kopis#show', as: 'kopi'

  get '/roasts' => 'roasts#index'
  get '/roasts/new' => 'roasts#new', as: 'roast_new'
  post '/roasts' => 'roasts#create'
  
  get '/roasts/:id' => 'roasts#show', as: 'roast'
  get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roast'
  patch '/roasts/:id' => 'roasts#update'
  delete '/roasts/:id' => 'roasts#destroy'

  get '/customers/:id' => 'customers#show', as: 'customer'  

end
