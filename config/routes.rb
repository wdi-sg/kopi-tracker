Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'roasts#index'
  get '/roasts' => 'roasts#index', as: 'roasts'
  get '/roasts/:name' => 'roasts#show' , as: 'roast'

end