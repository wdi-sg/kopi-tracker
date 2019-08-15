Rails.application.routes.draw do
  devise_for :users
  resources :kopis

  get '/customers/:id' => 'customers#show', as: 'customer'
end