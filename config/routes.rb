Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'roasts#index'
  get '/orders' => 'orders#index' , as: 'orders'
  get '/orders/:id' => 'orders#show' , as: 'order'

end