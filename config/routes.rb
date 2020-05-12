Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #############


  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  get '/kopis/:id' => 'kopis#show', as: 'kopi'  
  post '/kopis' => 'kopis#create'
  get '/kopis' => 'kopis#index', as: 'all_kopis'

#############

  get '/kopi_farms/new' => 'kopi_farms#new', as: 'new_kopi_farm'
  get '/kopi_farms/:id/edit' => 'kopi_farms#edit', as: 'edit_kopi_farm'
  get '/kopi_farms/:id' => 'kopi_farms#show', as: 'kopi_farm'
  patch '/kopi_farms/:id' => 'kopi_farms#update'
  delete '/kopi_farms/:id' => 'kopi_farms#destroy'
  post '/kopi_farms' => 'kopi_farms#create'
  root 'kopi_farms#index', as: 'all_kopi_farms'

  #############
  get 'roasts/new' => 'roasts#new', as: 'new_roast'
  post 'roasts' => 'roasts#create'
end
