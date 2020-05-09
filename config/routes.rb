Rails.application.routes.draw do
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'kopis#index'
    get '/kopis' => 'kopis#index', as: 'kopis'
    get '/kopis/new' => 'kopis#new', as: 'new_kopi'
    # get '/kopis/:id' => 'kopis#show', as: 'show_kopi'
    post '/kopis' => 'kopis#create'
    get '/kopis/roasts/:id' => 'kopis#roasts_show' , as: 'kopi_roasts'
    get '/kopis/roasts' => 'kopis#roasts_select' , as: 'roast_select'

    get '/kopis/farms/:id' => 'kopis#farms_show' , as: 'kopi_farms'
    get '/kopis/farms' => 'kopis#farms_select' , as: 'farm_select'
    get '/kopis/:id' => 'kopis#show' , as: 'kopi'

    get '/orders/new' => 'orders#new', as: 'new_order'
    post '/orders' => 'orders#create'
    get '/orders/:id' => 'orders#show' , as: 'order'

    get '/roasts' => 'roasts#index', as: 'roasts'
    get '/roasts/new' => 'roasts#new', as: 'new_roast'
    patch '/roasts/:id' => 'roasts#update'
    post '/roasts' => 'roasts#create'
    get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roast'
    get '/roasts/:id' => 'roasts#show' , as: 'roast'
    delete '/roasts/:id' => 'roasts#destroy'

    # root 'customers#index'
    # get '/customers' => 'customers#index', as: 'customers'
    get '/customers/new' => 'customers#new', as: 'new_customer'
    post '/customers' => 'customers#create'
    get '/customers/:id' => 'customers#show' , as: 'customer'
    # get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
    # patch '/customers/:id' => 'customers#update'
    # delete '/customers/:id' => 'customers#destroy'

    # root 'stocks#index'
    get '/stocks' => 'stocks#index', as: 'stocks'
    get '/stocks/new' => 'stocks#new', as: 'new_stock'
    post '/stocks' => 'stocks#create'
    get '/stocks/:id' => 'stocks#show' , as: 'stock'
    get '/stocks/:id/edit' => 'stocks#edit', as: 'edit_stock'
    patch '/stocks/:id' => 'stocks#update'
    delete '/stocks/:id' => 'stocks#destroy'

end
