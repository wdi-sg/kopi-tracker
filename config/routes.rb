Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # index (displays all entries)
  root 'kopis#index'
  get '/kopis' => 'kopis#index'

  # new (displays a form to create a new kopi)
  get '/kopis/new' => 'kopis#new', as: 'new_kopi'

  # create (saves a new kopi it to the database)
  post '/kopis' => 'kopis#create'

  # show (displays a specific kopi)
  get '/kopis/:id' => 'kopis#show' , as: 'kopi'

  # edit (displays a form for editing a particular kopi)
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'

  # update (takes input from the edit form and updates the kopi in the db appropriately)
  patch '/kopis/:id' => 'kopis#update'

  # destroy (deletes a specific kopi from the database)
  delete '/kopis/:id' => 'kopis#destroy'

end