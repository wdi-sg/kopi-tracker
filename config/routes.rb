Rails.application.routes.draw do


  devise_for :users, path: 'users' do
    get '/users/sign_out' => 'devise/sessions#destroy'

  end

  devise_for :customers, path: 'customers' do
    get '/customers/sign_out' => 'devise/sessions#destroy'
    get '/customers/:id' => 'customers#show' , as: 'customers'
  end



  root 'kopis#index', as: 'home'


  resources :kopis
  resources :origins
  resources :roasts
  resources :orders

end