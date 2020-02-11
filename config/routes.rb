Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/orders' => 'orders#index'
  get '/orders/:id' => 'orders#show', as: 'order'
  get '/report' => 'orders#show'

end
