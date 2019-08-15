Rails.application.routes.draw do



  root 'kopis#index', as: 'home'


  get '/kopis' => 'kopis#index', as: 'kopis'
  post '/kopis' => 'kopis#create'
  get '/kopis/new' => 'kopis#new', as: 'new_post'

  post '/origins' => 'origins#create'
  get '/origins/new' => 'origins#new', as: 'new_origins'

  post '/roasts' => 'origins#roasts'
  get '/roasts/new' => 'roasts#new', as: 'new_roasts'

  devise_for :users
  resources :kopis
  resources :origins
  resources :roasts
  resources :orders

end