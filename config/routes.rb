Rails.application.routes.draw do
  devise_for :customers
  devise_for :users
  get '/report', to: 'report#index'
  resources :roasts
  resources :orders
  resources :kopis
  resources :origins

  get '/customers/' => 'customers#index'
  get '/customers/:id' => 'customers#show' , as: 'customer'
  get '/customers/:id/edit' => 'customers#edit'
  patch '/customers/:id' => 'customers#update', as: 'edit_customer'

  get '/report', to: 'report#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "report#index"
end