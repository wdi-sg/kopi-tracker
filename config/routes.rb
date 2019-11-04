Rails.application.routes.draw do
  root 'origins#index'
  # get '/origins' => 'origins#index', as: 'origins'
  # get '/origins/new' => 'origins#new', as: 'new_origin'
  # post '/origins' => 'origins#create'
  # get '/origins/:id' => 'origins#show' , as: 'origin'
  # get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  # patch '/origins/:id' => 'origins#update'
  # delete '/origins/:id' => 'origins#destroy'
  resources :origins
end
