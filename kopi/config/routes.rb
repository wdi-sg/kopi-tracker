Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopi#index'

    get '/kopi/new' => 'kopi#new', as: 'new_kopi'

    post '/articles' => 'kopi#create'

    get '/articles/:id' => 'kopi#show' , as: 'kopi'
end