Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# => Kopi routes

# index page is in the root url
  root 'kopis#index'
  get '/kopis/', to: 'kopis#show', as: 'kopis' #why plural?
  get '/kopis/new', to: 'kopis#new', as: 'kopi' #why singular?

end