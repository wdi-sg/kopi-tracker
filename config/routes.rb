Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'kopis#index'
    get '/kopis' => 'kopis#index', as: 'kopis'
    get '/kopis/new' => 'kopis#new', as: 'new_kopi'
    post '/kopis' => 'kopis#create'
    get '/kopis/roasts/:id' => 'kopis#roasts_show' , as: 'kopi_roasts'
    get '/kopis/roasts' => 'kopis#roasts_select' , as: 'roast_select'

    get '/kopis/farms/:id' => 'kopis#farms_show' , as: 'kopi_farms'
    get '/kopis/farms' => 'kopis#farms_select' , as: 'farm_select'
    get '/kopis/:id' => 'kopis#show' , as: 'kopi'

    get '/orders/new' => 'orders#new', as: 'new_order'
    post '/orders' => 'orders#create'
    get '/orders/:id' => 'orders#show' , as: 'order'

end
