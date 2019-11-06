Rails.application.routes.draw do
  devise_for :customers, path: 'customers'
  devise_for :users, path: 'users'

  root 'origins#index'
  # get '/origins' => 'origins#index', as: 'origins'
  # get '/origins/new' => 'origins#new', as: 'new_origin'
  # post '/origins' => 'origins#create'
  # get '/origins/:id' => 'origins#show' , as: 'origin'
  # get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  # patch '/origins/:id' => 'origins#update'
  # delete '/origins/:id' => 'origins#destroy'
  resources :origins
  resources :kopis



end
