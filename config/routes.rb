Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'origins#index'

  get '/origins/:id/' => 'origins#show'
  get '/kopi/:id' => 'kopis#show'
  get '/customer/:id' => 'customers#show'
end