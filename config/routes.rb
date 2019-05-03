Rails.application.routes.draw do
  devise_for :users
  # get 'kopi/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :kopis, :roasts, :origins, :orders

  root 'kopis#index'

  get '/roasts/:roast_id/kopis' => 'kopis#index', as: 'roasts_kopis'

  # get '/report'
  # get '/kopis' => 'kopis#index', as: 'kopis'
  # get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  # post '/kopi'

end