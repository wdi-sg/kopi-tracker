Rails.application.routes.draw do
  devise_for :users
 root 'kopis#index'
 get '/kopis/new' => 'kopis#new', as: 'new_kopi'
 post '/kopis' => 'kopis#create'
 get '/kopis/:id' => 'kopis#show' , as: 'kopi'
 get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
 patch '/kopis/:id' => 'kopis#update'
end
