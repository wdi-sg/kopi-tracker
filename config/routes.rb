Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# index page is in the root url
  root 'kopis#index'


  get '/kopis/', to: 'kopis#show'

end