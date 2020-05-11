Rails.application.routes.draw do

  devise_for :users

  ####################### ORIGINS ########################
  root 'origins#index'
  get '/origins' => 'origins#index', as: 'origins'
  get '/origins/new' => 'origins#new', as: 'new_origin'
  post '/origins' => 'origins#create'

  #Important for sequence to be right!
  #Edit: shows form to edit
  #Insert the information into field for edit
  #Update the new information
  get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  get '/origins/:id' => 'origins#show' , as: 'origin'
  patch '/origins/:id' => 'origins#update'

  
 ####################### KOPIS ########################
  get '/kopis' => 'kopis#index', as: 'kopis'
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
  post '/kopis' => 'kopis#create'

  #Important for sequence to be right!
  #Edit: shows form to edit
  #Insert the information into field for edit
  #Update the new information
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  get '/kopis/:id' => 'kopis#show' , as: 'kopi'
  patch '/kopis/:id' => 'kopis#update'

  delete '/kopis/:id' => 'kopis#destroy'


 ####################### ROAST ########################
 get '/roasts' => 'roasts#index', as: 'roasts'
 get '/roasts/new' => 'roasts#new', as: 'new_roast'
 post '/roasts' => 'roasts#create'

 #Important for sequence to be right!
 #Edit: shows form to edit
 #Insert the information into field for edit
 #Update the new information
 get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roast'
 get '/roasts/:id' => 'roasts#show' , as: 'roast'
 patch '/roasts/:id' => 'roasts#update'

 delete '/roasts/:id' => 'roasts#destroy'
  
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html