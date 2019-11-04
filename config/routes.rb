Rails.application.routes.draw do

  root 'kopis#index'
  get 'kopis' => 'kopis#index', as: 'kopis'
  get 'kopis/new' => 'kopis#new', as: 'new_kopi'
  post 'kopis' => 'kopis#create'
  get 'kopis/:id' => 'kopis#show', as: 'kopi'
end
 