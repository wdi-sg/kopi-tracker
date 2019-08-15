Rails.application.routes.draw do
  devise_for :customers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  resources :kopis
  resources :orders
  get '/admin' => 'orders#admin'

  post '/kopi/create' => 'kopis#createstock', as: 'create_stock'
  get '/kopi/new' => 'kopis#newstock', as: 'new_stock'
  get '/kopi/:id' => 'kopis#indexstock', as: 'stock'

  get '/customer/:id' => 'kopis#customer', as: 'customer'
end

# console to call all kopis that are dark
# Roast.find_by(name: "Dark").kopi