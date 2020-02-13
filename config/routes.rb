Rails.application.routes.draw do
  devise_for :customers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :origins, :roasts, :kopis
  
  resources :customers do 
    resources :kopis
  end
  get '/' => 'kopis#index'

  
end
