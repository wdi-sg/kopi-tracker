Rails.application.routes.draw do
  devise_for :customers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :kopis, :origins, :orders, :roasts, :customers

  get '/' => 'kopis#index'
end
