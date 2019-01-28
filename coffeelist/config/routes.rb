Rails.application.routes.draw do
  root 'origns#index'
  get '/origns' => 'origns#index', as: 'origns'
  get '/origns/new' => 'origns#new', as: 'new_orign'
  post '/origns' => 'parks#create'

  get '/cups' => 'cups#index', as: 'cups'
  get '/cups/new' => 'cups#new', as: 'new_cup'
  post '/cups' => 'cups#create'
end