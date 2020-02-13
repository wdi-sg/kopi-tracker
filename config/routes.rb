Rails.application.routes.draw do
  devise_for :customers
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'kopis#index'

    get '/kopis' => 'kopis#index', as: 'kopis'

    get '/kopis/new' => 'kopis#new', as: 'new_kopi'

    get '/kopis/:id' => 'kopis#show', as: 'kopi'

    post '/kopis' => 'kopis#create'

    #roasty stuffs

    get '/roasts' => 'roasts#index', as: 'roasts'

    get '/roasts/new' => 'roasts#new', as: 'new_roast'

    post '/roasts' => 'roasts#create'

end