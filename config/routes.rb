Rails.application.routes.draw do
  root 'farms#index'
  get '/farms' => 'farms#index', as: 'farms'
  get '/farms/new' => 'farms#new', as: 'new_farm'
  post '/farms' => 'farms#create'
  get '/farms/:id' => 'farms#show' , as: 'farm'
  get '/farms/:id/edit' => 'farms#edit', as: 'edit_farm'
  patch '/farms/:id' => 'farms#update'
  delete '/farms/:id' => 'farms#destroy'


  get '/coffees' => 'coffees#index', as: 'coffees'
  get '/coffees/new' => 'coffees#new', as: 'new_coffee'
  post '/coffees' => 'coffees#create'
  get '/coffees/:id' => 'coffees#show' , as: 'coffee'
  get '/coffees/:id/edit' => 'coffees#edit', as: 'edit_coffee'
  patch '/coffees/:id' => 'coffees#update'
  delete '/coffees/:id' => 'coffees#destroy'


  get '/farms/:farm_id/coffees' => 'coffees#index', as: 'farm_coffees'
  get '/farms/:farm_id/coffees/new' => 'coffees#create', as: 'new_farm_coffee'
  post '/farms/:farm_id/coffees' => 'coffees#create'
end
