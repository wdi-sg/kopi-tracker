Rails.application.routes.draw do
  devise_for :users
  root 'cups#home'
  get '/cups' => 'cups#index', as: 'cups'
  get '/cups/new' => 'cups#new', as: 'new_cup'
  post '/cups' => 'cups#create'
  get '/cups/:id' => 'cups#show' , as: 'cup'

  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show' , as: 'customer'
end