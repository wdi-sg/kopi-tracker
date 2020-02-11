Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'origins#index'
  get '/origins/new' => 'origins#new'
  post 'origins' => 'origins#create'
  get '/origins/:id' => 'origins#show'




  post '/origins/:origin_id/kopis' => 'kopis#create'



end