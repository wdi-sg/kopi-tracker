Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# => Kopi routes

# index page is in the root url
  root 'kopis#index'

  # don't really know what "as:'kopis'" does in here
  get '/kopis', to: 'kopis#index', as: 'kopis' #why plural?
  get '/kopis/new', to: 'kopis#new', as: 'kopi_new' #why singular?

  post '/kopis', to: 'kopis#create'

  # I understand that 'kopi_id' will contain the value from controller to display route id
  get '/kopis/:id', to: 'kopis#show', as: 'kopi'


  get '/origins', to: 'origins#index', as: 'origins'
  get '/origins/new', to: 'origins#new', as: 'origin_new'

  post '/origins', to: 'origins#create'



end